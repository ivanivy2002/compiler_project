#!/bin/bash
func_testcase_dir=$(realpath $(dirname "$0")/./tests)
tests_dir="./tests"  # Variable to hold the tests directory path
output_dir="./output"  # Variable to hold the output directory path

test_single() {
	test_file=`realpath --relative-base=$func_testcase_dir $func_testcase_dir/$1.tea`
	# test_file=$(realpath --relative-base=$func_testcase_dir $func_testcase_dir/$1.tea)
	test_name=${test_file%.tea}
	
	echo -n $test_name
	echo ": "

	./compiler $func_testcase_dir/$test_name.tea
	if [ $? != 0 ]; then
		echo fail; exit -1
	fi
    llvm-link $tests_dir/$test_name.ll sylib.ll -S -o $output_dir/$test_name.ll
	if [ $? != 0 ]; then
		echo "fail to link"; exit -1
	fi
	if [ -f $func_testcase_dir/$test_name.in ]; then
    	lli $output_dir/$test_name.ll < $func_testcase_dir/$test_name.in > $output_dir/$test_name.out
	else
    	lli $output_dir/$test_name.ll > $output_dir/$test_name.out
	fi
	echo -e $? >> $output_dir/$test_name.out
	diff -Bb $output_dir/$test_name.out $func_testcase_dir/$test_name.out > /dev/null 2>/dev/null
	if [ $? == 0 ]; then
        echo pass; 
	else
		echo fail;\
		echo "Expect:";\
		cat $func_testcase_dir/$test_name.out;\
		echo "Got:";\
		cat $output_dir/$test_name.out;\
		exit -1
	fi
}

main() {
	test_single $1
}

main $@
