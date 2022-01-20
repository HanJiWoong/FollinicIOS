//
//  String.swift
//  FollinicIOS
//
//  Created by 한지웅-PC on 2022/01/09.
//

import Foundation

let DefineStringTrue = "true"
let DefineStringFalse = "false"

enum DefineStringKo:String {
    case Confirm = "확인"
    case Email = "이메일"
    case Password = "비밀번호"
    case Login = "로그인"
    case Join = "회원가입"
    case DoJoin = "회원가입하기"
    case FindPW = "비밀번호 찾기"
    case EmailWrong = "이메일을 다시 확인해주세요."
    case PasswordWrong = "비밀번호를 다시 입력해주세요."
    case NameWrong = "이름은 최대 5자까지 가능합니다."
    case MobileWrong = "전화번호를 다시 확인해주세요."
    case BirthWrong = "생년월일을 다시 입력해주세요."
    case FindPWNamePlaceholder = "회원가입시 등록한 이름을 입력해주세요."
    case FindPWMobilePlaceholder = "회원가입시 등록한 전화번호를 입력해주세요."
    case FindPWEmailPlaceholder = "회원가입시 등록한 이메일을 입력해주세요."
    case TermsAgreeServiceTitle = "필수 서비스 이용약관에 동의"
    case TemrsAgreeServiceSubTitme = "필수이용약관 정보"
    case TermsAgreeUnitTitle1 = "폴리니크APP 이용약관"
    case TermsAgreeUnitTitle2 = "개인정보 처리방침"
    case TermsAgreeUnitTitle3 = "제3자 정보제공 동의"
    case TermsAgreeUnitTitle4 = "민감성정보제공 황용동의"
    case TermsAgreeUnitTitle5 = "개인정보 보호정책"
    case JoinPasswordWrong = "비밀번호는 영문,숫자 포함 6자 이상입니다."
    case JoinPasswordMatchWrong = "비밀번호가 일치하지 않습니다."
    case JoinPasswordCorrect = "유효한 비밀번호 입니다."
    case JoinPasswordMatchCorrect = "입력한 비밀번호와 동일합니다."
    case JoinNamePlaceholder = "APP에서 사용할 이름을 적어주세요."
    case JoinEmailPlaceholder = "이메일을 입력해주세요."
    case JoinPWPlaceholder = "비밀번호를 입력해주세요."
    case JoinMobilePlaceholder = "전화번호를 입력해주세요."
    case JoinBirthPlaceholder = "(예 1985-06-18)"
}



