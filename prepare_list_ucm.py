import os, glob
all_list = []
all_label = []

# data_root = 'NWPU-RESISC45/'
data_root = os.path.expanduser('~/Data/public_data_AI/UCMerced_LandUse/')

all_classes = os.listdir(data_root + 'Images/')
print(all_classes)

f1 = open(data_root+'all.txt', 'w')
f2 = open(data_root+'label_list.txt', 'w')

for i, cls in enumerate(all_classes):
    print(cls, i)
    f2.writelines(cls + ', ' + str(i) + '\n')

    # cls_list = glob.glob(os.path.join(data_root, cls, '*.jpg'))
    # print(os.path.join(data_root, 'Images', cls,'*.tif'))
    cls_list = glob.glob(os.path.join(data_root,'Images', cls, '*.tif'))
    # print(cls_list)
    # cls_list = ["/".join(dd.split('/')[1:]) for dd in cls_list]
    cls_list = ["/".join(dd.split('/')[-2:]) for dd in cls_list]

    for cc in cls_list:
        f1.writelines(cc + ' ' + str(i) + '\n')

    # break

f1.close()
f2.close()
