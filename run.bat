cd /d %~dp0
del out.cov
del out2.cov

"C:\Program Files\OpenCppCoverage\OpenCppCoverage.exe" --source %~dp0 --export_type binary:out.cov  -- Debug\OpenCppCoverageTest.exe
"C:\Program Files\OpenCppCoverage\OpenCppCoverage.exe" --source %~dp0 --export_type binary:out2.cov -- Debug\OpenCppCoverageTest2.exe
"C:\Program Files\OpenCppCoverage\OpenCppCoverage.exe" --source %~dp0 --input_coverage out.cov --input_coverage out2.cov


