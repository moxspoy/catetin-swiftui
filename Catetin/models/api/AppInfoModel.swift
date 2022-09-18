//
//  AppInfoModel.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

// This file was generated from JSON Schema using codebeautify, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome4 = try Welcome4(json)

import Foundation

// MARK: - Welcome4
struct AppInfoModel {
    let maintenance, version: String
    let operatingTime: OperatingTimeModel
    let gangguan: DisturbanceModel
    let customerFriendPhoneNumber: String
    let remoteConfigFetchIntervalInMinutes: Int
}

// MARK: - Welcome4Gangguan
struct DisturbanceModel {
    let dataStatus: DataStatus
    let dataModal: DataModal
    let lastUpdate: String
}

// MARK: - DataModal
struct DataModal {
    let normal: [Any?]
    let gangguan, gangguanPlus: DisturbanceContentModel
}

// MARK: - GangguanPlusClass
struct DisturbanceContentModel {
    let content, subcontent: String
}

// MARK: - DataStatus
struct DataStatus {
    let pending: SenderBankDisturbanceModel
    let siap: BeneficiaryBankDisturbanceModel
}

// MARK: - Pending
struct SenderBankDisturbanceModel {
    let mandiri, bri: String
    let bni: Int
    let bca: String
    let bsm, cimb: Int
    let muamalat, tabunganPensiunanNasional, permata, bniVa: String
    let danamon: Int
    let briVa, permataVa: String
    let cimbVa, mandiriVa: Int
}

// MARK: - Siap
struct BeneficiaryBankDisturbanceModel {
    let mandiri, bri, bni, bca: String
    let bsm, cimb: Int
    let muamalat: String
    let tabunganPensiunanNasional, permata: Int
    let gopay: String
    let ovo, dana: Int
    let shopeepay: String
    let unsupportedBank, danamon, ocbc, bii: Int
    let panin, uob, citibank, artha: Int
    let tokyo, standardChartered, capital, anz: Int
    let boc, bumiArta, hsbc, rabobank: Int
    let mayapada, bjb, dki, daerahIstimewa: Int
    let jawaTengah, jawaTimur, jambi, sumut: Int
    let sumateraBarat, riauDanKepri, sumselDanBabel, lampung: Int
    let kalimantanSelatan, kalimantanBarat, kalimantanTimur, kalimantanTengah: Int
    let sulselbar, sulut, nusaTenggaraBarat, bali: Int
    let nusaTenggaraTimur, maluku, papua, bengkulu: Int
    let sulawesi, sulawesiTenggara, nusantaraParahyangan, india: Int
    let mestikaDharma, sinarmas, maspion, ganesha: Int
    let icbc, qnbKesawan, btn, woori: Int
    let bjbSyr, mega, bukopin, jasaJakarta: Int
    let hana, mncInternasional, agroniaga, sbiIndonesia: Int
    let royal, nationalnobu, megaSyr, inaPerdana: Int
    let sahabatSampoerna, kesejahteraanEkonomi, bcaSyr, artos: Int
    let mayora, indexSelindo, victoriaInternasional, agris: Int
    let chinatrust, commonwealth, ccb, victoriaSyr: Int
    let banten, mutiara, paninSyr, aceh: Int
    let btpnSyr, dinar: Int
    let harda: String
    let mas, prima, yudhaBakti: Int
    let linkaja: String
    let dompetku, shinhan, bukopinSyr, cnb: Int
    let atmbLSB, atmbPlus, antardaerah, mantap: Int
    let eka, finnet, aladin: Int
    let mandiriVa: String
    let muamalatVa, danamonVa: Int
}

// MARK: - OperatingTime
struct OperatingTimeModel {
    let weekday, weekend, label: String
}

