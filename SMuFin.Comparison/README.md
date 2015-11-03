##we compared *SVelter*, *Delly*, *Lumpy*, *Pindel* and *SMuFin* based on the somatic events SMuFin have implemented in their paper
(`Moncunill V, Gonzalez S, Beà S, et al. Comprehensive characterization of complex structural variations in cancer by directly comparing genome sequence reads[J]. Nature biotechnology, 2014, 32(11): 1106-1112.`)

In the first batch comparison, we run *SVelter*, *Delly*, *Lumpy*, *Pindel* and *SMuFin* on simulated events on Chr22 at Read Depth 30, as provided by *SMuFin*. 

we provided here the scripts we used to to apply each algorithm and interprete the results:

####Apply Lumpy :
```
samtools view /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/alignment/chr22_insilico_Normal.sorted.bam | /nfs/remills-data/apps/lumpy-sv/scripts/split_unmapped_to_fasta.pl -b 20 > /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Normal.sorted.um.fq
bwa bwasw -H -t 20 /scratch/remills_flux/xuefzhao/reference/hg19/hg19.fa /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Normal.sorted.um.fq | samtools view -Sb ->/scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Normal.sorted.um.bam
samtools sort /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Normal.sorted.um.bam /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Normal.sorted.um.sorted
samtools index /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Normal.sorted.um.sorted.bam
samtools view /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/alignment/chr22_insilico_Normal.sorted.bam | tail -n+100000 | /nfs/remills-data/apps/temp/lumpy-sv/scripts/pairend_distro.py -r 101 -X 4 -N 10000 -o /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Normal.sorted.histo
#mean:499.2397	stdev:23.990148893
lumpy -mw 4 -tt 0.0 -x /scratch/remills_flux/xuefzhao/svelter/Support/Exclude.hg19.bed -pe bam_file:/scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/alignment/chr22_insilico_Normal.sorted.bam,histo_file:/scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Normal.sorted.histo,mean:499.2397,stdev:23.990148893,read_length:80,min_non_overlap:80,discordant_z:4,back_distance:20,weight:1,id:bwa,min_mapping_threshold:20 -sr bam_file:/scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Normal.sorted.um.sorted.bam,back_distance:20,weight:1,id:bwa,min_mapping_threshold:20 > /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Normal.sorted.bedpe

samtools view /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/alignment/chr22_insilico_Tumor.sorted.bam | /nfs/remills-data/apps/lumpy-sv/scripts/split_unmapped_to_fasta.pl -b 20 > /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Tumor.sorted.um.fq
bwa bwasw -H -t 20 /scratch/remills_flux/xuefzhao/reference/hg19/hg19.fa /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Tumor.sorted.um.fq | samtools view -Sb ->/scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Tumor.sorted.um.bam
samtools sort /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Tumor.sorted.um.bam /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Tumor.sorted.um.sorted
samtools index /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Tumor.sorted.um.sorted.bam
samtools view /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/alignment/chr22_insilico_Tumor.sorted.bam | tail -n+100000 | /nfs/remills-data/apps/temp/lumpy-sv/scripts/pairend_distro.py -r 101 -X 4 -N 10000 -o /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Tumor.sorted.histo
#mean:499.2397	stdev:23.990148893
lumpy -mw 4 -tt 0.0 -x /scratch/remills_flux/xuefzhao/svelter/Support/Exclude.hg19.bed -pe bam_file:/scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/alignment/chr22_insilico_Tumor.sorted.bam,histo_file:/scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Tumor.sorted.histo,mean:499.5817,stdev:21.3189241077,read_length:80,min_non_overlap:80,discordant_z:4,back_distance:20,weight:1,id:bwa,min_mapping_threshold:20 -sr bam_file:/scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Tumor.sorted.um.sorted.bam,back_distance:20,weight:1,id:bwa,min_mapping_threshold:20 > /scratch/remills_flux/xuefzhao/Simulation.Xuefang/Smufin/dataset/bam_file/Lumpy/chr22_insilico_Tumor.sorted.bedpe
```