@echo off

rem Copyright 2026 Aleksandr Bocharov
rem Distributed under the Boost Software License, Version 1.0.
rem See accompanying file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt
rem 2026-05-25
rem https://github.com/Aleksandr3Bocharov/refalabeinsteinpuzzle

if not exist bin mkdir bin
%REFALABBIN%\refalabc src\refalabeinsteinpuzzle -a,"-o src\refalabeinsteinpuzzle.o" > refalabeinsteinpuzzle.log
%REFALABBIN%\refalabc src\solver -a,"-o src\solver.o" >> refalabeinsteinpuzzle.log
clang -o bin\refalabeinsteinpuzzle.exe src\refalabeinsteinpuzzle.o src\solver.o %REFALABLIB%\obj\mainrf.o -L%REFALABLIB% -lrefalab -pthread -static >> refalabeinsteinpuzzle.log
bin\refalabeinsteinpuzzle
