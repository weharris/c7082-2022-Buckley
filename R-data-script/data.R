# Just make the data folders omg
# run this once then comment out (should be in repo)
# dir.create('../pics')
# dir.create('../pics/train')
# dir.create('../pics/test')
# dir.create('../pics/val')
# dir.create('../pics/train/early')
# dir.create('../pics/train/late')
# dir.create('../pics/train/healthy')
# dir.create('../pics/test/early')
# dir.create('../pics/test/late')
# dir.create('../pics/test/healthy')
# dir.create('../pics/val/early')
# dir.create('../pics/val/late')
# dir.create('../pics/val/healthy')

# get the directory locations
# run this once then comment out (should be in repo)
trainfe <- '../pics/train/early'
trainfl <- '../pics/train/late'
trainfh <- '../pics/train/healthy'

testfe <- '../pics/test/early'
testfl <- '../pics/test/late'
testfh <- '../pics/test/healthy'

valfe <- '../pics/val/early'
valfl <- '../pics/val/late'
valfh <- '../pics/val/healthy'

# old file locations
healthy1 <- '../potato_leaf_pics/More healthy leaves/Healthy/'
healthy2 <- '../potato_leaf_pics/Potato-Leaf/Healthy/'
eblight <- '../potato_leaf_pics/Potato-Leaf/Early Blight/'
lblight <- '../potato_leaf_pics/Potato-Leaf/Late Blight/'

# get old file names + path
healthy1f <- paste(healthy1, list.files(healthy1), sep = '')
healthy2f <- paste(healthy2, list.files(healthy2), sep = '')
eblightf <- paste(eblight, list.files(eblight), sep = '')
lblightf <- paste(lblight, list.files(lblight), sep = '')

# copy those files to new structure (we could move them)
# going for ~80/10/10 train/val/test split
length(healthy1f)
length(healthy2f)
length(eblightf)
length(lblightf)

file.copy(from = healthy1f[1:653], to = trainfh)
file.copy(from = healthy1f[654:735], to = testfh)
file.copy(from = healthy1f[736:816], to = valfh)

file.copy(from = healthy2f[1:122], to = trainfh)
file.copy(from = healthy2f[123:138], to = testfh)
file.copy(from = healthy2f[139:152], to = valfh)

file.copy(from = eblightf[1:800], to = trainfe)
file.copy(from = eblightf[801:900], to = testfe)
file.copy(from = eblightf[901:1000], to = valfe)

file.copy(from = lblightf[1:800], to = trainfl)
file.copy(from = lblightf[801:900], to = testfl)
file.copy(from = lblightf[901:1000], to = valfl)
