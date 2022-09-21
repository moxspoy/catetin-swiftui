//
//  AppInfoModel.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let appInfoModel = try? newJSONDecoder().decode(AppInfoModel.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseAppInfoModel { response in
//     if let appInfoModel = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire

// MARK: - AppInfoModel
struct AppInfoModel: Codable {
    var maintenance, version: String
    var operatingTime: OperatingTime
    var gangguan: AppInfoModelGangguan
    var customerFriendPhoneNumber: String
    var remoteConfigFetchIntervalInMinutes: Int

    enum CodingKeys: String, CodingKey {
        case maintenance, version
        case operatingTime = "operating_time"
        case gangguan
        case customerFriendPhoneNumber = "customer_friend_phone_number"
        case remoteConfigFetchIntervalInMinutes = "remote_config_fetch_interval_in_minutes"
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseAppInfoModelGangguan { response in
//     if let appInfoModelGangguan = response.result.value {
//       ...
//     }
//   }

// MARK: - AppInfoModelGangguan
struct AppInfoModelGangguan: Codable {
    var dataStatus: DataStatus
    var dataModal: DataModal
    var lastUpdate: String

    enum CodingKeys: String, CodingKey {
        case dataStatus = "data_status"
        case dataModal = "data_modal"
        case lastUpdate = "last_update"
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseDataModal { response in
//     if let dataModal = response.result.value {
//       ...
//     }
//   }

// MARK: - DataModal
struct DataModal: Codable {
    var normal: [JSONAny]
    var gangguan, gangguanPlus: GangguanPlusClass

    enum CodingKeys: String, CodingKey {
        case normal, gangguan
        case gangguanPlus = "gangguan_plus"
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGangguanPlusClass { response in
//     if let gangguanPlusClass = response.result.value {
//       ...
//     }
//   }

// MARK: - GangguanPlusClass
struct GangguanPlusClass: Codable {
    var content, subcontent: String
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseDataStatus { response in
//     if let dataStatus = response.result.value {
//       ...
//     }
//   }

// MARK: - DataStatus
struct DataStatus: Codable {
    var pending: Pending
    var siap: Siap
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsePending { response in
//     if let pending = response.result.value {
//       ...
//     }
//   }

// MARK: - Pending
struct Pending: Codable {
    var mandiri, bri: String
    var bni: Int
    var bca: String
    var bsm, cimb: Int
    var muamalat, tabunganPensiunanNasional, permata, bniVa: String
    var danamon: Int
    var briVa, permataVa: String
    var cimbVa, mandiriVa: Int

    enum CodingKeys: String, CodingKey {
        case mandiri, bri, bni, bca, bsm, cimb, muamalat
        case tabunganPensiunanNasional = "tabungan_pensiunan_nasional"
        case permata
        case bniVa = "bni_va"
        case danamon
        case briVa = "bri_va"
        case permataVa = "permata_va"
        case cimbVa = "cimb_va"
        case mandiriVa = "mandiri_va"
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseSiap { response in
//     if let siap = response.result.value {
//       ...
//     }
//   }

// MARK: - Siap
struct Siap: Codable {
    var mandiri, bri, bni, bca: String
    var bsm, cimb: Int
    var muamalat: String
    var tabunganPensiunanNasional, permata: Int
    var gopay: String
    var ovo, dana: Int
    var shopeepay: String
    var unsupportedBank, danamon, ocbc, bii: Int
    var panin, uob, citibank, artha: Int
    var tokyo, standardChartered, capital, anz: Int
    var boc, bumiArta, hsbc, rabobank: Int
    var mayapada, bjb, dki, daerahIstimewa: Int
    var jawaTengah, jawaTimur, jambi, sumut: Int
    var sumateraBarat, riauDanKepri, sumselDanBabel, lampung: Int
    var kalimantanSelatan, kalimantanBarat, kalimantanTimur, kalimantanTengah: Int
    var sulselbar, sulut, nusaTenggaraBarat, bali: Int
    var nusaTenggaraTimur, maluku, papua, bengkulu: Int
    var sulawesi, sulawesiTenggara, nusantaraParahyangan, india: Int
    var mestikaDharma, sinarmas, maspion, ganesha: Int
    var icbc, qnbKesawan, btn, woori: Int
    var bjbSyr, mega, bukopin, jasaJakarta: Int
    var hana, mncInternasional, agroniaga, sbiIndonesia: Int
    var royal, nationalnobu, megaSyr, inaPerdana: Int
    var sahabatSampoerna, kesejahteraanEkonomi, bcaSyr, artos: Int
    var mayora, indexSelindo, victoriaInternasional, agris: Int
    var chinatrust, commonwealth, ccb, victoriaSyr: Int
    var banten, mutiara, paninSyr, aceh: Int
    var btpnSyr, dinar: Int
    var harda: String
    var mas, prima, yudhaBakti: Int
    var linkaja: String
    var dompetku, shinhan, bukopinSyr, cnb: Int
    var atmbLSB, atmbPlus, antardaerah, mantap: Int
    var eka, finnet, aladin: Int
    var mandiriVa: String
    var muamalatVa, danamonVa: Int

    enum CodingKeys: String, CodingKey {
        case mandiri, bri, bni, bca, bsm, cimb, muamalat
        case tabunganPensiunanNasional = "tabungan_pensiunan_nasional"
        case permata, gopay, ovo, dana, shopeepay
        case unsupportedBank = "unsupported_bank"
        case danamon, ocbc, bii, panin, uob, citibank, artha, tokyo
        case standardChartered = "standard_chartered"
        case capital, anz, boc
        case bumiArta = "bumi_arta"
        case hsbc, rabobank, mayapada, bjb, dki
        case daerahIstimewa = "daerah_istimewa"
        case jawaTengah = "jawa_tengah"
        case jawaTimur = "jawa_timur"
        case jambi, sumut
        case sumateraBarat = "sumatera_barat"
        case riauDanKepri = "riau_dan_kepri"
        case sumselDanBabel = "sumsel_dan_babel"
        case lampung
        case kalimantanSelatan = "kalimantan_selatan"
        case kalimantanBarat = "kalimantan_barat"
        case kalimantanTimur = "kalimantan_timur"
        case kalimantanTengah = "kalimantan_tengah"
        case sulselbar, sulut
        case nusaTenggaraBarat = "nusa_tenggara_barat"
        case bali
        case nusaTenggaraTimur = "nusa_tenggara_timur"
        case maluku, papua, bengkulu, sulawesi
        case sulawesiTenggara = "sulawesi_tenggara"
        case nusantaraParahyangan = "nusantara_parahyangan"
        case india
        case mestikaDharma = "mestika_dharma"
        case sinarmas, maspion, ganesha, icbc
        case qnbKesawan = "qnb_kesawan"
        case btn, woori
        case bjbSyr = "bjb_syr"
        case mega, bukopin
        case jasaJakarta = "jasa_jakarta"
        case hana
        case mncInternasional = "mnc_internasional"
        case agroniaga
        case sbiIndonesia = "sbi_indonesia"
        case royal, nationalnobu
        case megaSyr = "mega_syr"
        case inaPerdana = "ina_perdana"
        case sahabatSampoerna = "sahabat_sampoerna"
        case kesejahteraanEkonomi = "kesejahteraan_ekonomi"
        case bcaSyr = "bca_syr"
        case artos, mayora
        case indexSelindo = "index_selindo"
        case victoriaInternasional = "victoria_internasional"
        case agris, chinatrust, commonwealth, ccb
        case victoriaSyr = "victoria_syr"
        case banten, mutiara
        case paninSyr = "panin_syr"
        case aceh
        case btpnSyr = "btpn_syr"
        case dinar, harda, mas, prima
        case yudhaBakti = "yudha_bakti"
        case linkaja, dompetku, shinhan
        case bukopinSyr = "bukopin_syr"
        case cnb
        case atmbLSB = "atmb_lsb"
        case atmbPlus = "atmb_plus"
        case antardaerah, mantap, eka, finnet, aladin
        case mandiriVa = "mandiri_va"
        case muamalatVa = "muamalat_va"
        case danamonVa = "danamon_va"
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseOperatingTime { response in
//     if let operatingTime = response.result.value {
//       ...
//     }
//   }

// MARK: - OperatingTime
struct OperatingTime: Codable {
    var weekday, weekend, label: String
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Alamofire response handlers

//extension DataRequest {
//    fileprivate func decodableResponseSerializer<T: Decodable>() -> DataResponseSerializer<T> {
//        return DataResponseSerializer { _, response, data, error in
//            guard error == nil else { return .failure(error!) }
//
//            guard let data = data else {
//                return .failure(AFError.responseSerializationFailed(reason: .inputDataNil))
//            }
//
//            return Result { try newJSONDecoder().decode(T.self, from: data) }
//        }
//    }
//
//    @discardableResult
//    fileprivate func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
//        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler: completionHandler)
//    }
//
//    @discardableResult
//    func responseAppInfoModel(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<AppInfoModel>) -> Void) -> Self {
//        return responseDecodable(queue: queue, completionHandler: completionHandler)
//    }
//}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}


