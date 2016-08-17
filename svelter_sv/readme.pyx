def print_default_parameters():
    print 'SVelter-0.1        Contact: xuefzhao@umich.edu      Last Update:2015-08-20'
    print ''
    print 'Usage: SVelter [Options] [Parameters]'
    print ' '
    print 'Options:'
    print '    Setup' 
    print '    Clean'
    print '    NullModel' 
    print '    BPSearch'  
    print '    BPIntegrate' 
    print '    SVPredict'
    print '    SVIntegrate'
    print ''
    print 'SVelter Setup should be run first'
    print ' '
    print 'Type in SVelter [options] for detailed parameters'
def print_default_parameters_predefinedbp():
    print 'SVelter PredefinedBP'
    print ' '
    print 'Required Parameters:'
    print '    --sample, input alignment file in bam format'
    print '    --workdir, writable working directory.'
    print '    --input-bed, predefined breakpoints in bed format'
    print ''
    print 'Optional Parameters:'
    print '    --prefix, output prefix for vcf and svelter files [input.vcf, input.svelter]'
    print '    --num-iteration, maximum number of iterations per structure will run'
    print '    --ploidy, limit algorithm to specific zygosity (0:heterozygous only; 1:homozygous only; 2:both; default:2)'
    print '    --null-model, specify which stat model to be fitted on each parameter. if --null-model==C / Complex, negative bimodal distribution will be fitted to insertlenth; else, normal will be used'
    print '    --null-copyneutral-length, minimum length requirement for --copyneutral regions used to build null model [2000]'
    print '    --null-copyneutral-perc, percentage of regions from --copyneutral to utilize [0.1]'
    print '    --null-random-length, specify the length of random regions if --copyneutral parameter not used [5000]'
    print '    --null-random-num, specify the number of random regions if --copyneutral parameter not used [10000]'
    print '    --qc-align, minimum alignment quality required for mapped reads in bam file [20]'
    print '    --qc-split, minimum alighment of clipped parts of reads considered as a soft clip [20]'
    print '    --split-min-len, the minumum length of clip read considered as split; [10% of read length]'
    print '    --qc-structure, minimum quality score of a resolved structure to be considered as PASS and included in the output vcf file'
    print '    --qc-map-tool, the tool extracts mappability information from a bigWig file,avaliable from: '
    print '                     http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bigWigSummary'
    print '    --qc-map-file, .bigWig file used to decide local genomic mappability, avaliable from: '
    print '                     ftp://hgdownload.cse.ucsc.edu/goldenPath/currentGenomes/Homo_sapiens/encodeDCC/wgEncodeMapability/'
    print '    --qc-map-cutoff, the minimum mapping quality required for a breakpoint to be reported [0.0]'
def print_default_parameters_clean():
    print 'SVelter Clean'
    print ''
    print 'Required Parameters:'
    print '    --workdir, writable working directory.'
def print_default_parameters_setup():
    print 'SVelter Setup'
    print ''
    print 'Required Parameters:'
    print '    --workdir, writable working directory.'
    print '    --reference, absolute path of reference genome. eg: .../SVelter/reference/genome.fa'
    print '    --support, folder containing all supportive file including: Exclude.bed,CN2.bed,Segdup.bed'
    print ''
    print 'Optional Parameters:'
    #print '    --support, folder containing all supportive file including: Exclude.bed,CN2.bed,Segdup.bed'
    #print '    --svelter-path, folder which contains all SVelter scripts.'
    #print '    --copyneutral,absolute path of bed file indicating copy neutural regions based on which null statistical models would be built. If not provided, genome would be randomly sampled for null model.'
    #print '    --exclude, absolute path of bed file indicating regions to be excluded from analysis. If not provided, no mappable regions will be excluded.'
    #print '    --segdup, absolute path of bed file indicating segmental duplications in genome, that would be excluded from analysis'
    print '    --ref-index, folders containin pre-indexed files, if applicable. For certain versions of human genome, the indexed files are availabel from https://github.com/mills-lab/svelter.'
def print_default_parameters_nullmodel():
    print 'SVelter NullModel'
    print ''
    print 'Required Parameters:'
    print '    --sample, input alignment file in bam format'
    print '    --workdir, writable working directory.'
    print ''
    print 'Optional Parameters:'
    print '    --chromosome, name of chromosome to run. should match chromosome name in bam file'
    print '    --null-model, specify which stat model to be fitted on each parameter. if --null-model==C / Complex, negative bimodal distribution will be fitted to insertlenth; else, normal will be used'
    print '    --null-copyneutral-length, minimum length requirement for --copyneutral regions used to build null model [2000]'
    print '    --null-copyneutral-perc, percentage of regions from --copyneutral to utilize [0.1]'
    print '    --null-random-length, specify the length of random regions if --copyneutral parameter not used [5000]'
    print '    --null-random-num, specify the number of random regions if --copyneutral parameter not used [10000]'
    print '    --split-min-len, the minumum length of clip read considered as split; [10% of read length]'
    print '    --qc-align, minimum alignment quality required for mapped reads in bam file [20]'
    print '    --qc-split, minimum alighment of clipped parts of reads considered as a soft clip [20]'
def print_default_parameters_bpsearch():
    print 'SVelter  BPSearch'
    print ''
    print 'Required Parameters:'
    print '    --sample, input alignment file in bam format'
    print '    --workdir, writable working directory.'
    print ''
    print 'Optional Parameters:'
    print '    --chromosome, name of chromosome to run. should match chromosome name in bam file'
    print '    --null-model, specify which stat model to be fitted on each parameter. if --null-model==C / Complex, negative bimodal distribution will be fitted to insertlenth; else, normal will be used'
    print '    --qc-align, minimum alignment quality required for mapped reads in bam file [20)'
    print '    --qc-split, minimum alighment of clipped parts of reads considered as a soft clip [20)'
    print '    --split-min-len, the minumum length of clip read considered as split; (default:10% of read length)'
    print '    --qc-map-tool, the tool extracts mappability information from a bigWig file,avaliable from: http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bigWigSummary'
    print '    --qc-map-file, .bigWig file used to decide local genomic mappability, avaliable from: ftp://hgdownload.cse.ucsc.edu/goldenPath/currentGenomes/Homo_sapiens/encodeDCC/wgEncodeMapability/'
    print '    --qc-map-cutoff, the minimum mapping quality required for a breakpoint to be reported [0.0)'
def print_default_parameters_bpintegrate():
    print 'SVelter  BPIntegrate'
    print ''
    print 'Required Parameters:'
    print '    --sample, input alignment file in bam format'
    print '    --workdir, writable working directory.'
    print ''
    print 'Optional Parameters:'
    print '    --batch, specify number of structures in each separate file (if 0, output files will be calssified by chromosomes; default, all BP clustered will be integrated in one txt file)'
    print '    --bp-path, specify the path where all called breakpoints were kept under'
    print '    --chromosome, name of chromosome to run. should match chromosome name in bam file'
def print_default_parameters_svpredict():
    print 'SVelter  SVPredict'
    print 'Required Parameters:'
    print '    --sample, input alignment file in bam format'
    print '    --workdir, writable working directory.'
    print '    --bp-file, input txt file containing clustered bps.'
    print ' '
    print 'Optional Parameters:'
    print '    --num-iteration, maximum number of iterations per structure will run'
    print '    --ploidy, limit algorithm to specific zygosity (0:heterozygous only; 1:homozygous only; 2:both; default:2)'
    print '    --null-model, specify which stat model to be fitted on each parameter. if --null-model==C / Complex, negative bimodal distribution will be fitted to insertlenth; else, normal will be used'
    print '    --qc-align, minimum alignment quality required for mapped reads in bam file [20)'
def print_default_parameters_svintegrate():
    print 'SVelter SVIntegrate'
    print ' '
    print 'Required Parameters:'
    print '    --sample, input alignment file in bam format'
    print '    --workdir, writable working directory.'
    print '    --input-path, path of .coverage files produced by SVelter SVPredict'
    print ' '
    print 'Optional Parameters:'
    print '    --prefix, output prefix for vcf and svelter files'
    print '    --input-path, path of .coverage files produced by SVelter SVPredict'
    print '    --qc-structure, minimum quality score of a resolved structure to be considered as PASS and included in the output vcf file'
