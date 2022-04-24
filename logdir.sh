#!/bin/bash

logdir=$1

if [ -d "$logdir" ]; then
	echo "ログディレクトリは:$logdir"

else 
	echo "[ERROR] ログディレクトリが見つかりません : $logdir"
fi


if [ -h "$logdir" ]; then
	echo "シンボリックリンクである"

fi


if [ -f "$logdir" ]; then
	echo "通常のファイルである"
fi

if [ -r "$logdir" ]; then
	echo "読み取りパーミッションが与えられている"
fi

if [ -w "$logdir" ]; then
	echo"書き込みパーミッションが与えられている"
fi

if [ -x "$logdir" ]; then
	echo"実行パーミッションが与えられている"
fi


if [ -n "$2" ]; then
	if [ "$1" -nt "$2" ]; then
		echo "新しい"

	fi
	if [ "$1" -ot "$2" ]; then
		echo "古い"
	fi

fi

