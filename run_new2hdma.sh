set -e

# for ch in 'et' 
# do
#     for yr in '2017' '2018'
#     do	
# 	echo "running --year ${yr} --chn all  "
# 	MonoHiggs_V3 --med 200 --ps 100 --year ${yr} --chn all

#     done
# done



signal_samples=("2HDMa_bb_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_bb_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150" "2HDMa_bb_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250" "2HDMa_bb_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350" "2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150" "2HDMa_bb_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250" "2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150" "2HDMa_bb_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250" "2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150" "2HDMa_bb_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250" "2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150" "2HDMa_bb_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250" "2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150" "2HDMa_bb_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250" "2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150" "2HDMa_bb_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250" "2HDMa_bb_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_bb_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_bb_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_bb_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_bb_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_bb_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_gg_sinp_0p1_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_gg_sinp_0p2_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_150" "2HDMa_gg_sinp_0p35_tanb_0p5_mXd_10_MH3_600_MH4_250" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_150" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_250" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1000_MH4_350" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_150" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_250" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1200_MH4_350" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_150" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_250" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_1600_MH4_350" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_150" "2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_150" "2HDMa_gg_sinp_0p35_tanb_1p5_mXd_10_MH3_600_MH4_250" "2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_150" "2HDMa_gg_sinp_0p35_tanb_20p0_mXd_10_MH3_600_MH4_250" "2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_150" "2HDMa_gg_sinp_0p35_tanb_2p0_mXd_10_MH3_600_MH4_250" "2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_150" "2HDMa_gg_sinp_0p35_tanb_4p0_mXd_10_MH3_600_MH4_250" "2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_150" "2HDMa_gg_sinp_0p35_tanb_50p0_mXd_10_MH3_600_MH4_250" "2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_150" "2HDMa_gg_sinp_0p35_tanb_8p0_mXd_10_MH3_600_MH4_250" "2HDMa_gg_sinp_0p3_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_gg_sinp_0p4_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_gg_sinp_0p5_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_gg_sinp_0p6_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_gg_sinp_0p7_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_gg_sinp_0p8_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_gg_sinp_0p9_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_100" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_200_MH4_150" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_100" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_300_MH4_150" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_100" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_150" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_200" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_400_MH4_250" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_150" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_200" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_250" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_500_MH4_300" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_100" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_150" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_200" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_250" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_300" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_350" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_400" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_600_MH4_500" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_250" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_300" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_350" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_700_MH4_400" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_250" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_300" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_350" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_800_MH4_500" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_300" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_350" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_400" "2HDMa_gg_sinp_0p35_tanb_1p0_mXd_10_MH3_900_MH4_500")


for i in "${signal_samples[@]}"
do
    echo $i
    MonoHiggs_2HDMa --masspt $i --year "2018" --chn all
    MonoHiggs_2HDMa --masspt $i --year "2017" --chn all
done