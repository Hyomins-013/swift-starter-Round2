func extractLottoNumbers() -> Set<Int> {
    var  lottoNumbers : Set<Int> = Set<Int>()
    repeat {
        let randomNumber = Int.random(in: 1...45)
        if !lottoNumbers.contains(randomNumber){
            lottoNumbers.insert(randomNumber)
        }
    } while (lottoNumbers.count < 6)
    return lottoNumbers
}

func compareLottoNumbers(myLottoNumbers : [Int]) {
    let winningNumber : Set<Int> = extractLottoNumbers()
    let overlappingNumber : Set<Int> = Set(myLottoNumbers).intersection(winningNumber)
    
    switch overlappingNumber.count {
    case 3...6:
        print("축하합니다! 겹치는 번호는 \(overlappingNumber.sorted()) 입니다!")
    default:
        print("아쉽게도 당첨에 되지 못했습니다. 당첨된 번호는 \(winningNumber.sorted()) 입니다.")
    }
}

let myLottoNumbers: [Int] = [15, 16, 17, 18, 19, 20]
compareLottoNumbers(myLottoNumbers : myLottoNumbers)
