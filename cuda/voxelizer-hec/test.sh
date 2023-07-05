rm -rf cpu gpu *.o *binvox*

make program=cpu run
mv *.binvox  binvox.cpu

make GPU=yes program=gpu run
mv *.binvox  binvox.gpu

echo "========= compare result with diff ========="
diff binvox.cpu binvox.gpu

rm -rf cpu gpu *.o *binvox*
