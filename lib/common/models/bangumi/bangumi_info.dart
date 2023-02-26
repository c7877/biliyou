// To parse this JSON data, do
//
//     final bangumiInfoModel = bangumiInfoModelFromJson(jsonString);

import 'dart:convert';

class BangumiInfoModel {
  BangumiInfoModel({
    this.code,
    this.message,
    this.result,
  });

  final int? code;
  final String? message;
  final BangumiInfoResult? result;

  factory BangumiInfoModel.fromRawJson(String str) =>
      BangumiInfoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BangumiInfoModel.fromJson(Map<String, dynamic> json) =>
      BangumiInfoModel(
        code: json["code"],
        message: json["message"],
        result: json["result"] == null
            ? null
            : BangumiInfoResult.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "result": result?.toJson(),
      };
}

class BangumiInfoResult {
  BangumiInfoResult({
    this.activity,
    this.alias,
    this.areas,
    this.bkgCover,
    this.cover,
    this.episodes,
    this.evaluate,
    this.freya,
    this.jpTitle,
    this.link,
    this.mediaId,
    this.mode,
    this.newEp,
    this.payment,
    this.positive,
    this.publish,
    this.rating,
    this.record,
    this.rights,
    this.seasonId,
    this.seasonTitle,
    this.seasons,
    this.section,
    this.series,
    this.shareCopy,
    this.shareSubTitle,
    this.shareUrl,
    this.show,
    this.showSeasonType,
    this.squareCover,
    this.stat,
    this.status,
    this.subtitle,
    this.title,
    this.total,
    this.type,
    this.upInfo,
    this.userStatus,
  });

  final Activity? activity;
  final String? alias;
  final List<Area>? areas;
  final String? bkgCover;
  final String? cover;
  final List<Episode>? episodes;
  final String? evaluate;
  final Freya? freya;
  final String? jpTitle;
  final String? link;
  final int? mediaId;
  final int? mode;
  final ResultNewEp? newEp;
  final Payment? payment;
  final Positive? positive;
  final Publish? publish;
  final Rating? rating;
  final String? record;
  final ResultRights? rights;
  final int? seasonId;
  final String? seasonTitle;
  final List<Season>? seasons;
  final List<Section>? section;
  final Series? series;
  final String? shareCopy;
  final String? shareSubTitle;
  final String? shareUrl;
  final Show? show;
  final int? showSeasonType;
  final String? squareCover;
  final ResultStat? stat;
  final int? status;
  final String? subtitle;
  final String? title;
  final int? total;
  final int? type;
  final UpInfo? upInfo;
  final UserStatus? userStatus;

  factory BangumiInfoResult.fromRawJson(String str) =>
      BangumiInfoResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BangumiInfoResult.fromJson(Map<String, dynamic> json) =>
      BangumiInfoResult(
        activity: json["activity"] == null
            ? null
            : Activity.fromJson(json["activity"]),
        alias: json["alias"],
        areas: json["areas"] == null
            ? []
            : List<Area>.from(json["areas"]!.map((x) => Area.fromJson(x))),
        bkgCover: json["bkg_cover"],
        cover: json["cover"],
        episodes: json["episodes"] == null
            ? []
            : List<Episode>.from(
                json["episodes"]!.map((x) => Episode.fromJson(x))),
        evaluate: json["evaluate"],
        freya: json["freya"] == null ? null : Freya.fromJson(json["freya"]),
        jpTitle: json["jp_title"],
        link: json["link"],
        mediaId: json["media_id"],
        mode: json["mode"],
        newEp: json["new_ep"] == null
            ? null
            : ResultNewEp.fromJson(json["new_ep"]),
        payment:
            json["payment"] == null ? null : Payment.fromJson(json["payment"]),
        positive: json["positive"] == null
            ? null
            : Positive.fromJson(json["positive"]),
        publish:
            json["publish"] == null ? null : Publish.fromJson(json["publish"]),
        rating: json["rating"] == null ? null : Rating.fromJson(json["rating"]),
        record: json["record"],
        rights: json["rights"] == null
            ? null
            : ResultRights.fromJson(json["rights"]),
        seasonId: json["season_id"],
        seasonTitle: json["season_title"],
        seasons: json["seasons"] == null
            ? []
            : List<Season>.from(
                json["seasons"]!.map((x) => Season.fromJson(x))),
        section: json["section"] == null
            ? []
            : List<Section>.from(
                json["section"]!.map((x) => Section.fromJson(x))),
        series: json["series"] == null ? null : Series.fromJson(json["series"]),
        shareCopy: json["share_copy"],
        shareSubTitle: json["share_sub_title"],
        shareUrl: json["share_url"],
        show: json["show"] == null ? null : Show.fromJson(json["show"]),
        showSeasonType: json["show_season_type"],
        squareCover: json["square_cover"],
        stat: json["stat"] == null ? null : ResultStat.fromJson(json["stat"]),
        status: json["status"],
        subtitle: json["subtitle"],
        title: json["title"],
        total: json["total"],
        type: json["type"],
        upInfo:
            json["up_info"] == null ? null : UpInfo.fromJson(json["up_info"]),
        userStatus: json["user_status"] == null
            ? null
            : UserStatus.fromJson(json["user_status"]),
      );

  Map<String, dynamic> toJson() => {
        "activity": activity?.toJson(),
        "alias": alias,
        "areas": areas == null
            ? []
            : List<dynamic>.from(areas!.map((x) => x.toJson())),
        "bkg_cover": bkgCover,
        "cover": cover,
        "episodes": episodes == null
            ? []
            : List<dynamic>.from(episodes!.map((x) => x.toJson())),
        "evaluate": evaluate,
        "freya": freya?.toJson(),
        "jp_title": jpTitle,
        "link": link,
        "media_id": mediaId,
        "mode": mode,
        "new_ep": newEp?.toJson(),
        "payment": payment?.toJson(),
        "positive": positive?.toJson(),
        "publish": publish?.toJson(),
        "rating": rating?.toJson(),
        "record": record,
        "rights": rights?.toJson(),
        "season_id": seasonId,
        "season_title": seasonTitle,
        "seasons": seasons == null
            ? []
            : List<dynamic>.from(seasons!.map((x) => x.toJson())),
        "section": section == null
            ? []
            : List<dynamic>.from(section!.map((x) => x.toJson())),
        "series": series?.toJson(),
        "share_copy": shareCopy,
        "share_sub_title": shareSubTitle,
        "share_url": shareUrl,
        "show": show?.toJson(),
        "show_season_type": showSeasonType,
        "square_cover": squareCover,
        "stat": stat?.toJson(),
        "status": status,
        "subtitle": subtitle,
        "title": title,
        "total": total,
        "type": type,
        "up_info": upInfo?.toJson(),
        "user_status": userStatus?.toJson(),
      };
}

class Activity {
  Activity({
    this.headBgUrl,
    this.id,
    this.title,
  });

  final String? headBgUrl;
  final int? id;
  final String? title;

  factory Activity.fromRawJson(String str) =>
      Activity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        headBgUrl: json["head_bg_url"],
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "head_bg_url": headBgUrl,
        "id": id,
        "title": title,
      };
}

class Area {
  Area({
    this.id,
    this.name,
  });

  final int? id;
  final String? name;

  factory Area.fromRawJson(String str) => Area.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Area.fromJson(Map<String, dynamic> json) => Area(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Episode {
  Episode({
    this.aid,
    this.badge,
    this.badgeInfo,
    this.badgeType,
    this.bvid,
    this.cid,
    this.cover,
    this.dimension,
    this.duration,
    this.from,
    this.id,
    this.isViewHide,
    this.link,
    this.longTitle,
    this.pubTime,
    this.pv,
    this.releaseDate,
    this.rights,
    this.shareCopy,
    this.shareUrl,
    this.shortLink,
    this.status,
    this.subtitle,
    this.title,
    this.vid,
    this.stat,
  });

  final int? aid;
  final String? badge;
  final BadgeInfo? badgeInfo;
  final int? badgeType;
  final String? bvid;
  final int? cid;
  final String? cover;
  final Dimension? dimension;
  final int? duration;
  final String? from;
  final int? id;
  final bool? isViewHide;
  final String? link;
  final String? longTitle;
  final int? pubTime;
  final int? pv;
  final String? releaseDate;
  final EpisodeRights? rights;
  final String? shareCopy;
  final String? shareUrl;
  final String? shortLink;
  final int? status;
  final String? subtitle;
  final String? title;
  final String? vid;
  final EpisodeStat? stat;

  factory Episode.fromRawJson(String str) => Episode.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        aid: json["aid"],
        badge: json["badge"],
        badgeInfo: json["badge_info"] == null
            ? null
            : BadgeInfo.fromJson(json["badge_info"]),
        badgeType: json["badge_type"],
        bvid: json["bvid"],
        cid: json["cid"],
        cover: json["cover"],
        dimension: json["dimension"] == null
            ? null
            : Dimension.fromJson(json["dimension"]),
        duration: json["duration"],
        from: json["from"],
        id: json["id"],
        isViewHide: json["is_view_hide"],
        link: json["link"],
        longTitle: json["long_title"],
        pubTime: json["pub_time"],
        pv: json["pv"],
        releaseDate: json["release_date"],
        rights: json["rights"] == null
            ? null
            : EpisodeRights.fromJson(json["rights"]),
        shareCopy: json["share_copy"],
        shareUrl: json["share_url"],
        shortLink: json["short_link"],
        status: json["status"],
        subtitle: json["subtitle"],
        title: json["title"],
        vid: json["vid"],
        stat: json["stat"] == null ? null : EpisodeStat.fromJson(json["stat"]),
      );

  Map<String, dynamic> toJson() => {
        "aid": aid,
        "badge": badge,
        "badge_info": badgeInfo?.toJson(),
        "badge_type": badgeType,
        "bvid": bvid,
        "cid": cid,
        "cover": cover,
        "dimension": dimension?.toJson(),
        "duration": duration,
        "from": from,
        "id": id,
        "is_view_hide": isViewHide,
        "link": link,
        "long_title": longTitle,
        "pub_time": pubTime,
        "pv": pv,
        "release_date": releaseDate,
        "rights": rights?.toJson(),
        "share_copy": shareCopy,
        "share_url": shareUrl,
        "short_link": shortLink,
        "status": status,
        "subtitle": subtitle,
        "title": title,
        "vid": vid,
        "stat": stat?.toJson(),
      };
}

class BadgeInfo {
  BadgeInfo({
    this.bgColor,
    this.bgColorNight,
    this.text,
  });

  final String? bgColor;
  final String? bgColorNight;
  final String? text;

  factory BadgeInfo.fromRawJson(String str) =>
      BadgeInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BadgeInfo.fromJson(Map<String, dynamic> json) => BadgeInfo(
        bgColor: json["bg_color"],
        bgColorNight: json["bg_color_night"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "bg_color": bgColor,
        "bg_color_night": bgColorNight,
        "text": text,
      };
}

class Dimension {
  Dimension({
    this.height,
    this.rotate,
    this.width,
  });

  final int? height;
  final int? rotate;
  final int? width;

  factory Dimension.fromRawJson(String str) =>
      Dimension.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dimension.fromJson(Map<String, dynamic> json) => Dimension(
        height: json["height"],
        rotate: json["rotate"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "height": height,
        "rotate": rotate,
        "width": width,
      };
}

class EpisodeRights {
  EpisodeRights({
    this.allowDemand,
    this.allowDm,
    this.allowDownload,
    this.areaLimit,
  });

  final int? allowDemand;
  final int? allowDm;
  final int? allowDownload;
  final int? areaLimit;

  factory EpisodeRights.fromRawJson(String str) =>
      EpisodeRights.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EpisodeRights.fromJson(Map<String, dynamic> json) => EpisodeRights(
        allowDemand: json["allow_demand"],
        allowDm: json["allow_dm"],
        allowDownload: json["allow_download"],
        areaLimit: json["area_limit"],
      );

  Map<String, dynamic> toJson() => {
        "allow_demand": allowDemand,
        "allow_dm": allowDm,
        "allow_download": allowDownload,
        "area_limit": areaLimit,
      };
}

class EpisodeStat {
  EpisodeStat({
    this.coin,
    this.danmakus,
    this.likes,
    this.play,
    this.reply,
  });

  final int? coin;
  final int? danmakus;
  final int? likes;
  final int? play;
  final int? reply;

  factory EpisodeStat.fromRawJson(String str) =>
      EpisodeStat.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EpisodeStat.fromJson(Map<String, dynamic> json) => EpisodeStat(
        coin: json["coin"],
        danmakus: json["danmakus"],
        likes: json["likes"],
        play: json["play"],
        reply: json["reply"],
      );

  Map<String, dynamic> toJson() => {
        "coin": coin,
        "danmakus": danmakus,
        "likes": likes,
        "play": play,
        "reply": reply,
      };
}

class Freya {
  Freya({
    this.bubbleDesc,
    this.bubbleShowCnt,
    this.iconShow,
  });

  final String? bubbleDesc;
  final int? bubbleShowCnt;
  final int? iconShow;

  factory Freya.fromRawJson(String str) => Freya.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Freya.fromJson(Map<String, dynamic> json) => Freya(
        bubbleDesc: json["bubble_desc"],
        bubbleShowCnt: json["bubble_show_cnt"],
        iconShow: json["icon_show"],
      );

  Map<String, dynamic> toJson() => {
        "bubble_desc": bubbleDesc,
        "bubble_show_cnt": bubbleShowCnt,
        "icon_show": iconShow,
      };
}

class ResultNewEp {
  ResultNewEp({
    this.desc,
    this.id,
    this.isNew,
    this.title,
  });

  final String? desc;
  final int? id;
  final int? isNew;
  final String? title;

  factory ResultNewEp.fromRawJson(String str) =>
      ResultNewEp.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResultNewEp.fromJson(Map<String, dynamic> json) => ResultNewEp(
        desc: json["desc"],
        id: json["id"],
        isNew: json["is_new"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "desc": desc,
        "id": id,
        "is_new": isNew,
        "title": title,
      };
}

class Payment {
  Payment({
    this.discount,
    this.payType,
    this.price,
    this.promotion,
    this.tip,
    this.viewStartTime,
    this.vipDiscount,
    this.vipFirstPromotion,
    this.vipPromotion,
  });

  final int? discount;
  final PayType? payType;
  final String? price;
  final String? promotion;
  final String? tip;
  final int? viewStartTime;
  final int? vipDiscount;
  final String? vipFirstPromotion;
  final String? vipPromotion;

  factory Payment.fromRawJson(String str) => Payment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
        discount: json["discount"],
        payType: json["pay_type"] == null
            ? null
            : PayType.fromJson(json["pay_type"]),
        price: json["price"],
        promotion: json["promotion"],
        tip: json["tip"],
        viewStartTime: json["view_start_time"],
        vipDiscount: json["vip_discount"],
        vipFirstPromotion: json["vip_first_promotion"],
        vipPromotion: json["vip_promotion"],
      );

  Map<String, dynamic> toJson() => {
        "discount": discount,
        "pay_type": payType?.toJson(),
        "price": price,
        "promotion": promotion,
        "tip": tip,
        "view_start_time": viewStartTime,
        "vip_discount": vipDiscount,
        "vip_first_promotion": vipFirstPromotion,
        "vip_promotion": vipPromotion,
      };
}

class PayType {
  PayType({
    this.allowDiscount,
    this.allowPack,
    this.allowTicket,
    this.allowTimeLimit,
    this.allowVipDiscount,
    this.forbidBb,
  });

  final int? allowDiscount;
  final int? allowPack;
  final int? allowTicket;
  final int? allowTimeLimit;
  final int? allowVipDiscount;
  final int? forbidBb;

  factory PayType.fromRawJson(String str) => PayType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PayType.fromJson(Map<String, dynamic> json) => PayType(
        allowDiscount: json["allow_discount"],
        allowPack: json["allow_pack"],
        allowTicket: json["allow_ticket"],
        allowTimeLimit: json["allow_time_limit"],
        allowVipDiscount: json["allow_vip_discount"],
        forbidBb: json["forbid_bb"],
      );

  Map<String, dynamic> toJson() => {
        "allow_discount": allowDiscount,
        "allow_pack": allowPack,
        "allow_ticket": allowTicket,
        "allow_time_limit": allowTimeLimit,
        "allow_vip_discount": allowVipDiscount,
        "forbid_bb": forbidBb,
      };
}

class Positive {
  Positive({
    this.id,
    this.title,
  });

  final int? id;
  final String? title;

  factory Positive.fromRawJson(String str) =>
      Positive.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Positive.fromJson(Map<String, dynamic> json) => Positive(
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };
}

class Publish {
  Publish({
    this.isFinish,
    this.isStarted,
    this.pubTime,
    this.pubTimeShow,
    this.unknowPubDate,
    this.weekday,
  });

  final int? isFinish;
  final int? isStarted;
  final String? pubTime;
  final String? pubTimeShow;
  final int? unknowPubDate;
  final int? weekday;

  factory Publish.fromRawJson(String str) => Publish.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Publish.fromJson(Map<String, dynamic> json) => Publish(
        isFinish: json["is_finish"],
        isStarted: json["is_started"],
        pubTime: json["pub_time"],
        pubTimeShow: json["pub_time_show"],
        unknowPubDate: json["unknow_pub_date"],
        weekday: json["weekday"],
      );

  Map<String, dynamic> toJson() => {
        "is_finish": isFinish,
        "is_started": isStarted,
        "pub_time": pubTime,
        "pub_time_show": pubTimeShow,
        "unknow_pub_date": unknowPubDate,
        "weekday": weekday,
      };
}

class Rating {
  Rating({
    this.count,
    this.score,
  });

  final int? count;
  final double? score;

  factory Rating.fromRawJson(String str) => Rating.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        count: json["count"],
        score: json["score"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "score": score,
      };
}

class ResultRights {
  ResultRights({
    this.allowBp,
    this.allowBpRank,
    this.allowDownload,
    this.allowReview,
    this.areaLimit,
    this.banAreaShow,
    this.canWatch,
    this.copyright,
    this.forbidPre,
    this.freyaWhite,
    this.isCoverShow,
    this.isPreview,
    this.onlyVipDownload,
    this.resource,
    this.watchPlatform,
  });

  final int? allowBp;
  final int? allowBpRank;
  final int? allowDownload;
  final int? allowReview;
  final int? areaLimit;
  final int? banAreaShow;
  final int? canWatch;
  final String? copyright;
  final int? forbidPre;
  final int? freyaWhite;
  final int? isCoverShow;
  final int? isPreview;
  final int? onlyVipDownload;
  final String? resource;
  final int? watchPlatform;

  factory ResultRights.fromRawJson(String str) =>
      ResultRights.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResultRights.fromJson(Map<String, dynamic> json) => ResultRights(
        allowBp: json["allow_bp"],
        allowBpRank: json["allow_bp_rank"],
        allowDownload: json["allow_download"],
        allowReview: json["allow_review"],
        areaLimit: json["area_limit"],
        banAreaShow: json["ban_area_show"],
        canWatch: json["can_watch"],
        copyright: json["copyright"],
        forbidPre: json["forbid_pre"],
        freyaWhite: json["freya_white"],
        isCoverShow: json["is_cover_show"],
        isPreview: json["is_preview"],
        onlyVipDownload: json["only_vip_download"],
        resource: json["resource"],
        watchPlatform: json["watch_platform"],
      );

  Map<String, dynamic> toJson() => {
        "allow_bp": allowBp,
        "allow_bp_rank": allowBpRank,
        "allow_download": allowDownload,
        "allow_review": allowReview,
        "area_limit": areaLimit,
        "ban_area_show": banAreaShow,
        "can_watch": canWatch,
        "copyright": copyright,
        "forbid_pre": forbidPre,
        "freya_white": freyaWhite,
        "is_cover_show": isCoverShow,
        "is_preview": isPreview,
        "only_vip_download": onlyVipDownload,
        "resource": resource,
        "watch_platform": watchPlatform,
      };
}

class Season {
  Season({
    this.badge,
    this.badgeInfo,
    this.badgeType,
    this.cover,
    this.horizontalCover1610,
    this.horizontalCover169,
    this.mediaId,
    this.newEp,
    this.seasonId,
    this.seasonTitle,
    this.seasonType,
    this.stat,
  });

  final String? badge;
  final BadgeInfo? badgeInfo;
  final int? badgeType;
  final String? cover;
  final String? horizontalCover1610;
  final String? horizontalCover169;
  final int? mediaId;
  final SeasonNewEp? newEp;
  final int? seasonId;
  final String? seasonTitle;
  final int? seasonType;
  final SeasonStat? stat;

  factory Season.fromRawJson(String str) => Season.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        badge: json["badge"],
        badgeInfo: json["badge_info"] == null
            ? null
            : BadgeInfo.fromJson(json["badge_info"]),
        badgeType: json["badge_type"],
        cover: json["cover"],
        horizontalCover1610: json["horizontal_cover_1610"],
        horizontalCover169: json["horizontal_cover_169"],
        mediaId: json["media_id"],
        newEp: json["new_ep"] == null
            ? null
            : SeasonNewEp.fromJson(json["new_ep"]),
        seasonId: json["season_id"],
        seasonTitle: json["season_title"],
        seasonType: json["season_type"],
        stat: json["stat"] == null ? null : SeasonStat.fromJson(json["stat"]),
      );

  Map<String, dynamic> toJson() => {
        "badge": badge,
        "badge_info": badgeInfo?.toJson(),
        "badge_type": badgeType,
        "cover": cover,
        "horizontal_cover_1610": horizontalCover1610,
        "horizontal_cover_169": horizontalCover169,
        "media_id": mediaId,
        "new_ep": newEp?.toJson(),
        "season_id": seasonId,
        "season_title": seasonTitle,
        "season_type": seasonType,
        "stat": stat?.toJson(),
      };
}

class SeasonNewEp {
  SeasonNewEp({
    this.cover,
    this.id,
    this.indexShow,
  });

  final String? cover;
  final int? id;
  final String? indexShow;

  factory SeasonNewEp.fromRawJson(String str) =>
      SeasonNewEp.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SeasonNewEp.fromJson(Map<String, dynamic> json) => SeasonNewEp(
        cover: json["cover"],
        id: json["id"],
        indexShow: json["index_show"],
      );

  Map<String, dynamic> toJson() => {
        "cover": cover,
        "id": id,
        "index_show": indexShow,
      };
}

class SeasonStat {
  SeasonStat({
    this.favorites,
    this.seriesFollow,
    this.views,
  });

  final int? favorites;
  final int? seriesFollow;
  final int? views;

  factory SeasonStat.fromRawJson(String str) =>
      SeasonStat.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SeasonStat.fromJson(Map<String, dynamic> json) => SeasonStat(
        favorites: json["favorites"],
        seriesFollow: json["series_follow"],
        views: json["views"],
      );

  Map<String, dynamic> toJson() => {
        "favorites": favorites,
        "series_follow": seriesFollow,
        "views": views,
      };
}

class Section {
  Section({
    this.attr,
    this.episodeId,
    this.episodeIds,
    this.episodes,
    this.id,
    this.title,
    this.type,
  });

  final int? attr;
  final int? episodeId;
  final List<dynamic>? episodeIds;
  final List<Episode>? episodes;
  final int? id;
  final String? title;
  final int? type;

  factory Section.fromRawJson(String str) => Section.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Section.fromJson(Map<String, dynamic> json) => Section(
        attr: json["attr"],
        episodeId: json["episode_id"],
        episodeIds: json["episode_ids"] == null
            ? []
            : List<dynamic>.from(json["episode_ids"]!.map((x) => x)),
        episodes: json["episodes"] == null
            ? []
            : List<Episode>.from(
                json["episodes"]!.map((x) => Episode.fromJson(x))),
        id: json["id"],
        title: json["title"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "attr": attr,
        "episode_id": episodeId,
        "episode_ids": episodeIds == null
            ? []
            : List<dynamic>.from(episodeIds!.map((x) => x)),
        "episodes": episodes == null
            ? []
            : List<dynamic>.from(episodes!.map((x) => x.toJson())),
        "id": id,
        "title": title,
        "type": type,
      };
}

class Series {
  Series({
    this.displayType,
    this.seriesId,
    this.seriesTitle,
  });

  final int? displayType;
  final int? seriesId;
  final String? seriesTitle;

  factory Series.fromRawJson(String str) => Series.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Series.fromJson(Map<String, dynamic> json) => Series(
        displayType: json["display_type"],
        seriesId: json["series_id"],
        seriesTitle: json["series_title"],
      );

  Map<String, dynamic> toJson() => {
        "display_type": displayType,
        "series_id": seriesId,
        "series_title": seriesTitle,
      };
}

class Show {
  Show({
    this.wideScreen,
  });

  final int? wideScreen;

  factory Show.fromRawJson(String str) => Show.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Show.fromJson(Map<String, dynamic> json) => Show(
        wideScreen: json["wide_screen"],
      );

  Map<String, dynamic> toJson() => {
        "wide_screen": wideScreen,
      };
}

class ResultStat {
  ResultStat({
    this.coins,
    this.danmakus,
    this.favorite,
    this.favorites,
    this.likes,
    this.reply,
    this.share,
    this.views,
  });

  final int? coins;
  final int? danmakus;
  final int? favorite;
  final int? favorites;
  final int? likes;
  final int? reply;
  final int? share;
  final int? views;

  factory ResultStat.fromRawJson(String str) =>
      ResultStat.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResultStat.fromJson(Map<String, dynamic> json) => ResultStat(
        coins: json["coins"],
        danmakus: json["danmakus"],
        favorite: json["favorite"],
        favorites: json["favorites"],
        likes: json["likes"],
        reply: json["reply"],
        share: json["share"],
        views: json["views"],
      );

  Map<String, dynamic> toJson() => {
        "coins": coins,
        "danmakus": danmakus,
        "favorite": favorite,
        "favorites": favorites,
        "likes": likes,
        "reply": reply,
        "share": share,
        "views": views,
      };
}

class UpInfo {
  UpInfo({
    this.avatar,
    this.avatarSubscriptUrl,
    this.follower,
    this.isFollow,
    this.mid,
    this.nicknameColor,
    this.pendant,
    this.themeType,
    this.uname,
    this.verifyType,
    this.vipLabel,
    this.vipStatus,
    this.vipType,
  });

  final String? avatar;
  final String? avatarSubscriptUrl;
  final int? follower;
  final int? isFollow;
  final int? mid;
  final String? nicknameColor;
  final Pendant? pendant;
  final int? themeType;
  final String? uname;
  final int? verifyType;
  final VipLabel? vipLabel;
  final int? vipStatus;
  final int? vipType;

  factory UpInfo.fromRawJson(String str) => UpInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpInfo.fromJson(Map<String, dynamic> json) => UpInfo(
        avatar: json["avatar"],
        avatarSubscriptUrl: json["avatar_subscript_url"],
        follower: json["follower"],
        isFollow: json["is_follow"],
        mid: json["mid"],
        nicknameColor: json["nickname_color"],
        pendant:
            json["pendant"] == null ? null : Pendant.fromJson(json["pendant"]),
        themeType: json["theme_type"],
        uname: json["uname"],
        verifyType: json["verify_type"],
        vipLabel: json["vip_label"] == null
            ? null
            : VipLabel.fromJson(json["vip_label"]),
        vipStatus: json["vip_status"],
        vipType: json["vip_type"],
      );

  Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "avatar_subscript_url": avatarSubscriptUrl,
        "follower": follower,
        "is_follow": isFollow,
        "mid": mid,
        "nickname_color": nicknameColor,
        "pendant": pendant?.toJson(),
        "theme_type": themeType,
        "uname": uname,
        "verify_type": verifyType,
        "vip_label": vipLabel?.toJson(),
        "vip_status": vipStatus,
        "vip_type": vipType,
      };
}

class Pendant {
  Pendant({
    this.image,
    this.name,
    this.pid,
  });

  final String? image;
  final String? name;
  final int? pid;

  factory Pendant.fromRawJson(String str) => Pendant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pendant.fromJson(Map<String, dynamic> json) => Pendant(
        image: json["image"],
        name: json["name"],
        pid: json["pid"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "pid": pid,
      };
}

class VipLabel {
  VipLabel({
    this.bgColor,
    this.bgStyle,
    this.borderColor,
    this.text,
    this.textColor,
  });

  final String? bgColor;
  final int? bgStyle;
  final String? borderColor;
  final String? text;
  final String? textColor;

  factory VipLabel.fromRawJson(String str) =>
      VipLabel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VipLabel.fromJson(Map<String, dynamic> json) => VipLabel(
        bgColor: json["bg_color"],
        bgStyle: json["bg_style"],
        borderColor: json["border_color"],
        text: json["text"],
        textColor: json["text_color"],
      );

  Map<String, dynamic> toJson() => {
        "bg_color": bgColor,
        "bg_style": bgStyle,
        "border_color": borderColor,
        "text": text,
        "text_color": textColor,
      };
}

class UserStatus {
  UserStatus({
    this.areaLimit,
    this.banAreaShow,
    this.follow,
    this.followStatus,
    this.login,
    this.pay,
    this.payPackPaid,
    this.sponsor,
  });

  final int? areaLimit;
  final int? banAreaShow;
  final int? follow;
  final int? followStatus;
  final int? login;
  final int? pay;
  final int? payPackPaid;
  final int? sponsor;

  factory UserStatus.fromRawJson(String str) =>
      UserStatus.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserStatus.fromJson(Map<String, dynamic> json) => UserStatus(
        areaLimit: json["area_limit"],
        banAreaShow: json["ban_area_show"],
        follow: json["follow"],
        followStatus: json["follow_status"],
        login: json["login"],
        pay: json["pay"],
        payPackPaid: json["pay_pack_paid"],
        sponsor: json["sponsor"],
      );

  Map<String, dynamic> toJson() => {
        "area_limit": areaLimit,
        "ban_area_show": banAreaShow,
        "follow": follow,
        "follow_status": followStatus,
        "login": login,
        "pay": pay,
        "pay_pack_paid": payPackPaid,
        "sponsor": sponsor,
      };
}
