#!/bin/bash

echo "어떤 유닛을 생산하시겠습니까?"
echo "m) 마린"
echo "f) 파이어뱃"
echo "g) 고스트"
echo "기타) 취소"
read hotkey

case $hotkey in
    m) echo "미네랄을 50 소모하였습니다.";;
    f) echo "미네랄 50, 가스 25를 소모하였습니다.";;
    c) echo "미네랄 25, 가스 75를 소모하였습니다.";;
    *) echo "유닛 생산을 취소하였습니다.";;
esac
