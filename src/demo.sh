# EDSR baseline model (x2) + JPEG augmentation
#python3 main.py --model MatrixModel --scale 4 --patch_size 192 --save MatrixModelG7_x4 --reset --pre_train /media/zrh/cc9cb710-2fc7-4382-81ff-649502a83b92/EDSR-PyTorch-master/experiment/MatrixModelG6_x4/model/model_best.pt
#python main.py --model EDSR --scale 2 --patch_size 96 --save edsr_baseline_x2 --reset --data_train DIV2K+DIV2K-Q75 --data_test DIV2K+DIV2K-Q75

# EDSR baseline model (x3) - from EDSR baseline model (x2)
#python main.py --model EDSR --scale 3 --patch_size 144 --save edsr_baseline_x3 --reset --pre_train [pre-trained EDSR_baseline_x2 model dir]

# EDSR baseline model (x4) - from EDSR baseline model (x2)
#python main.py --model EDSR --scale 4 --save edsr_baseline_x4 --reset --pre_train [pre-trained EDSR_baseline_x2 model dir]

# EDSR in the paper (x2)
#python main.py --model EDSR --scale 2 --save edsr_x2 --n_resblocks 32 --n_feats 256 --res_scale 0.1 --reset

# EDSR in the paper (x3) - from EDSR (x2)
#python main.py --model EDSR --scale 3 --save edsr_x3 --n_resblocks 32 --n_feats 256 --res_scale 0.1 --reset --pre_train [pre-trained EDSR model dir]

# EDSR in the paper (x4) - from EDSR (x2)
#python main.py --model EDSR --scale 4 --save edsr_x4 --n_resblocks 32 --n_feats 256 --res_scale 0.1 --reset --pre_train [pre-trained EDSR_x2 model dir]

# MDSR baseline model
#python main.py --template MDSR --model MDSR --scale 2+3+4 --save MDSR_baseline --reset --save_models

# MDSR in the paper
#python main.py --template MDSR --model MDSR --scale 2+3+4 --n_resblocks 80 --save MDSR --reset --save_models

# Standard benchmarks (Ex. EDSR_baseline_x4)
#python main.py --data_test Set5+Set14+B100+Urban100+DIV2K --data_range 801-900 --scale 4 --pre_train download --test_only --self_ensemble

#python main.py --data_test Set5+Set14+B100+Urban100+DIV2K --data_range 801-900 --scale 4 --n_resblocks 32 --n_feats 256 --res_scale 0.1 --pre_train download --test_only --self_ensemble

# Test your own images
#python main.py --data_test Demo --scale 4 --pre_train download --test_only --save_results

# Advanced - Test with JPEG images 
#python main.py --model MDSR --data_test Demo --scale 2+3+4 --pre_train download --test_only --save_results

# Advanced - Training with adversarial loss
#python main.py --template GAN --scale 4 --save edsr_gan --reset --patch_size 96 --loss 5*VGG54+0.15*GAN --pre_train download

# RDN BI model (x2)
#python3.6 main.py --scale 2 --save RDN_D16C8G64_BIx2 --model RDN --epochs 200 --batch_size 16 --data_range 801-805 --patch_size 64 --reset
# RDN BI model (x3)
#python3.6 main.py --scale 3 --save RDN_D16C8G64_BIx3 --model RDN --epochs 200 --batch_size 16 --data_range 801-805 --patch_size 96 --reset
# RDN BI model (x4)
#python main.py --scale 4 --save RDN9_D16C8G64_BIx4 --model RDN --epochs 400 --batch_size 16 --patch_size 128 --reset #--pre_train /home/visionx/wwl/project/EDSR-PyTorch-master/experiment/RDN7_D16C8G64_BIx4/model/model_best.pt

# RCAN_BIX2_G10R20P48, input=48x48, output=96x96
# pretrained model can be downloaded from https://www.dropbox.com/s/mjbcqkd4nwhr6nu/models_ECCV2018RCAN.zip?dl=0
#python main.py --template RCAN --save RCAN_BIX2_G10R20P48 --scale 2 --reset --save_results --patch_size 96
# RCAN_BIX3_G10R20P48, input=48x48, output=144x144
#python main.py --template RCAN --save RCAN_BIX3_G10R20P48 --scale 3 --reset --save_results --patch_size 144 --pre_train ../experiment/model/RCAN_BIX2.pt
# RCAN_BIX4_G10R20P48, input=48x48, output=192x192
#python main.py --template RCAN2 --data_test Set5+Set14+B100+Urban100+Manga109 --data_range 801-900 --scale 8 --pre_train ../experiment/RCAN81_BIX8_G10R20P48/model/model_best.pt --test_only --save RCAN_test --save_results
#python main.py --template RCAN2 --save RCAN3_BIX4_G10R20P48 --scale 4 --reset --save_results --patch_size 192 --pre_train ../experiment/model/RCAN_BIX2.pt
# RCAN_BIX8_G10R20P48, input=48x48, output=384x384
#python main.py --template RCAN2 --save RCAN81_BIX8_G10R20P48 --scale 8 --reset --save_results --patch_size 384 --pre_train ../experiment/model/RCAN_BIX8.pt

# HAN BI model (x2)
#python main.py --template HAN --save HANx2 --scale 2 --reset --save_results --patch_size 96 --pre_train ../experiment/model/RCAN_BIX2.pt
# HAN BI model (x3)
#python main.py --template HAN --save HANx3 --scale 3 --reset --save_results --patch_size 144 --pre_train ../experiment/model/RCAN_BIX2.pt
# HAN BI model (x4)
#python main.py --template HAN --save HANx4 --scale 4 --reset --save_results --patch_size 192 --pre_train ../experiment/model/RCAN_BIX2.pt
# HAN BI model (x8)
#python main.py --template HAN --save HANx8 --scale 8 --reset --save_results --patch_size 384 --pre_train ../experiment/model/RCAN_BIX2.pt
# Test HAN
#python main.py --template HAN --data_test Set5+Set14+B100+Urban100+Manga109 --data_range 801-900 --scale 2 --pre_train ../experiment/HAN/HAN_BIX2.pt --test_only --save HANx2_test --save_results

#python main.py --template HAN --save HANx4 --scale 4  --save_results --patch_size 192 --save_models --batch_size 16 --loss 1*L1 --reset
python main.py --template HAN \
               --save HANx4 \
               --scale 4  \
               --save_results \
               --patch_size 160 \
               --save_models \
               --batch_size 9 \
               --loss 1*L1 \
               --reset \
               --n_feats 64 \
               --n_colors 1 \
               --n_resblocks 20 \
               --n_resgroups 10 \
               --epochs 400