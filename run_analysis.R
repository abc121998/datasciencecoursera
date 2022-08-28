library(data.table)

x_train_table <- fread('./data/UCI HAR Dataset/train/X_train.txt')
y_train_table <- fread('./data/UCI HAR Dataset/train/y_train.txt',col.names='label')
x_train_table$label <- y_train_table

x_test_table <-fread('./data/UCI HAR Dataset/test/X_test.txt')
y_test_table <- fread('./data/UCI HAR Dataset/test/y_test.txt',col.names='label')
x_test_table$label <- y_test_table

merged_table <- rbindlist(list(x_train_table,x_test_table))

feature_names <- read.table('./data/UCI HAR Dataset/features.txt')[,2]
feature_names <- append(feature_names,'activity')
names(merged_table) <- feature_names

extracted_table <- subset(merged_table,select=grepl('std|mean|activity',feature_names))

a_labels <- read.table('./data/UCI HAR Dataset/activity_labels.txt')[,2]
act_factors <- factor(extracted_table$activity,labels=a_labels) 
extracted_table$activity <- act_factors
tidytable <- melt.data.table(extracted_table[,grep('mean()|activity',names(extracted_table)),with = FALSE],
                             measure.vars=patterns('^.+-.+'),value.name='mean')
tidytable[,c('measurement','orientation'):= tstrsplit(tidytable$variable,'-',fixed=TRUE,keep=c(1,3))]
tidytable <- tidytable[,c('activity','measurement', 'orientation', 'mean')]
tidytable