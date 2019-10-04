.class public final enum Lcom/ebay/common/view/util/OcsCountrySite;
.super Ljava/lang/Enum;
.source "OcsCountrySite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/view/util/OcsCountrySite;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Argentina:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Bolivia:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Brazile:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Chile:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum China:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Columbia:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum CostaRica:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum CzechRepublic:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Denmark:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum DominicanRepublic:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Ecuador:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum ElSalvador:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Finland:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Greece:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Greenland:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Guatemala:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Honduras:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Hungary:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Indonesia:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Isreal:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Japan:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Mexico:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum NewZealand:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Nicaragua:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Norway:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Panama:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Paraguay:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Peru:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Portugal:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum PuertoRico:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Romania:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Russia:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum SaudiArabia:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum SlovakRepublic:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum SouthAfrica:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum SouthKorea:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Sweden:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Taiwan:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Tajikistan:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Thailand:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Turkey:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Ukraine:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum UnitedArabEmirates:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Uruguay:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Venezuala:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Vietnam:Lcom/ebay/common/view/util/OcsCountrySite;

.field public static final enum Zambia:Lcom/ebay/common/view/util/OcsCountrySite;

.field private static siteMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ebay/common/view/util/OcsCountrySite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public countryCode:Ljava/lang/String;

.field public gbhCountryCode:Ljava/lang/String;

.field public languageCode:Ljava/lang/String;

.field public siteId:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 10
    new-instance v7, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Argentina"

    const-string v3, "AR"

    const-string v5, "es"

    const-string v6, "CO"

    const/4 v2, 0x0

    const/16 v4, 0xc

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/ebay/common/view/util/OcsCountrySite;->Argentina:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 11
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v9, "Bolivia"

    const-string v11, "BO"

    const-string v13, "es"

    const-string v14, "CO"

    const/4 v10, 0x1

    const/16 v12, 0x1c

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Bolivia:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 12
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v2, "Brazile"

    const-string v4, "BR"

    const-string v6, "pt"

    const-string v7, "BR"

    const/4 v3, 0x2

    const/16 v5, 0x1f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Brazile:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 13
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v9, "Chile"

    const-string v11, "CL"

    const-string v13, "es"

    const-string v14, "CO"

    const/4 v10, 0x3

    const/16 v12, 0x2c

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Chile:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 14
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v2, "Columbia"

    const-string v4, "CO"

    const-string v6, "es"

    const-string v7, "CO"

    const/4 v3, 0x4

    const/16 v5, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Columbia:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 15
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v9, "CostaRica"

    const-string v11, "CR"

    const-string v13, "es"

    const-string v14, "CO"

    const/4 v10, 0x5

    const/16 v12, 0x33

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->CostaRica:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 16
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v2, "DominicanRepublic"

    const-string v4, "DO"

    const-string v6, "es"

    const-string v7, "CO"

    const/4 v3, 0x6

    const/16 v5, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->DominicanRepublic:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 17
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v9, "Ecuador"

    const-string v11, "EC"

    const-string v13, "es"

    const-string v14, "CO"

    const/4 v10, 0x7

    const/16 v12, 0x3d

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Ecuador:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 18
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v2, "ElSalvador"

    const-string v4, "SV"

    const-string v6, "es"

    const-string v7, "CO"

    const/16 v3, 0x8

    const/16 v5, 0x3f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->ElSalvador:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 19
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Greenland"

    const-string v2, "GL"

    const/16 v3, 0x9

    const/16 v4, 0x51

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Greenland:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 20
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v6, "Guatemala"

    const-string v8, "GT"

    const-string v10, "es"

    const-string v11, "CO"

    const/16 v7, 0xa

    const/16 v9, 0x55

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Guatemala:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 21
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v13, "Honduras"

    const-string v15, "HN"

    const-string v17, "es"

    const-string v18, "CO"

    const/16 v14, 0xb

    const/16 v16, 0x5b

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Honduras:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 22
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v5, "Mexico"

    const-string v7, "MX"

    const-string v9, "es"

    const-string v10, "CO"

    const/16 v6, 0xc

    const/16 v8, 0x88

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Mexico:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 23
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v12, "Nicaragua"

    const-string v14, "NI"

    const-string v16, "es"

    const-string v17, "CO"

    const/16 v13, 0xd

    const/16 v15, 0x96

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Nicaragua:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 24
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v5, "Panama"

    const-string v7, "PA"

    const-string v9, "es"

    const-string v10, "CO"

    const/16 v6, 0xe

    const/16 v8, 0x9e

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Panama:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 25
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v12, "Paraguay"

    const-string v14, "PY"

    const-string v16, "es"

    const-string v17, "CO"

    const/16 v13, 0xf

    const/16 v15, 0xa0

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Paraguay:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 26
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Romania"

    const-string v2, "RO"

    const/16 v4, 0x10

    const/16 v5, 0xa7

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Romania:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 27
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "SaudiArabia"

    const-string v2, "SA"

    const/16 v5, 0x11

    const/16 v6, 0xb0

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->SaudiArabia:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 28
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "SlovakRepublic"

    const-string v2, "SK"

    const/16 v6, 0x12

    const/16 v7, 0xb5

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->SlovakRepublic:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 29
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Taiwan"

    const-string v2, "TW"

    const/16 v7, 0x13

    const/16 v8, 0xc4

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Taiwan:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 30
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "CzechRepublic"

    const-string v2, "CZ"

    const/16 v8, 0x14

    const/16 v9, 0xc5

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->CzechRepublic:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 31
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Denmark"

    const-string v2, "DK"

    const/16 v9, 0x15

    const/16 v10, 0xc6

    invoke-direct {v0, v1, v9, v2, v10}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Denmark:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 32
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Finland"

    const-string v2, "FI"

    const/16 v10, 0x16

    const/16 v11, 0xc7

    invoke-direct {v0, v1, v10, v2, v11}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Finland:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 33
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Greece"

    const-string v2, "GR"

    const/16 v11, 0x17

    const/16 v12, 0xc8

    invoke-direct {v0, v1, v11, v2, v12}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Greece:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 34
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Hungary"

    const-string v2, "HU"

    const/16 v12, 0x18

    const/16 v13, 0xca

    invoke-direct {v0, v1, v12, v2, v13}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Hungary:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 35
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Indonesia"

    const-string v2, "ID"

    const/16 v13, 0x19

    const/16 v14, 0xcc

    invoke-direct {v0, v1, v13, v2, v14}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Indonesia:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 36
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Isreal"

    const-string v2, "IL"

    const/16 v14, 0x1a

    const/16 v15, 0xce

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Isreal:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 37
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "NewZealand"

    const-string v2, "NZ"

    const/16 v15, 0x1b

    const/16 v14, 0xd0

    invoke-direct {v0, v1, v15, v2, v14}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->NewZealand:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 38
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Norway"

    const-string v2, "NO"

    const/16 v14, 0x1c

    const/16 v15, 0xd1

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Norway:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 39
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Portugal"

    const-string v2, "PT"

    const/16 v15, 0x1d

    const/16 v14, 0xd5

    invoke-direct {v0, v1, v15, v2, v14}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Portugal:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 40
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v20, "PuertoRico"

    const-string v22, "PR"

    const-string v24, "es"

    const-string v25, "CO"

    const/16 v21, 0x1e

    const/16 v23, 0xd6

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->PuertoRico:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 41
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v27, "Russia"

    const-string v29, "RU"

    const-string v31, "ru"

    const-string v32, "RU"

    const/16 v28, 0x1f

    const/16 v30, 0xd7

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v32}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Russia:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 42
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "SouthAfrica"

    const-string v2, "ZA"

    const/16 v14, 0x20

    const/16 v15, 0xd9

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->SouthAfrica:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 43
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Sweden"

    const-string v2, "SE"

    const/16 v14, 0x21

    const/16 v15, 0xda

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Sweden:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 44
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Thailand"

    const-string v2, "TH"

    const/16 v14, 0x22

    const/16 v15, 0xdb

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Thailand:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 45
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Vietnam"

    const-string v2, "VN"

    const/16 v14, 0x23

    const/16 v15, 0xdc

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Vietnam:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 46
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "China"

    const-string v2, "CN"

    const/16 v14, 0x24

    const/16 v15, 0xdf

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->China:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 47
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Japan"

    const-string v2, "JP"

    const/16 v14, 0x25

    const/16 v15, 0xe0

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Japan:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 48
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v20, "Peru"

    const-string v22, "PE"

    const-string v24, "es"

    const-string v25, "CO"

    const/16 v21, 0x26

    const/16 v23, 0xe1

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Peru:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 49
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "SouthKorea"

    const-string v2, "KR"

    const/16 v14, 0x27

    const/16 v15, 0xe2

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->SouthKorea:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 50
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Turkey"

    const-string v2, "TR"

    const/16 v14, 0x28

    const/16 v15, 0xe7

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Turkey:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 51
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Ukraine"

    const-string v2, "UA"

    const/16 v14, 0x29

    const/16 v15, 0xe8

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Ukraine:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 52
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "UnitedArabEmirates"

    const-string v2, "AE"

    const/16 v14, 0x2a

    const/16 v15, 0xe9

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->UnitedArabEmirates:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 53
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Tajikistan"

    const-string v2, "TJ"

    const/16 v14, 0x2b

    const/16 v15, 0xee

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Tajikistan:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 54
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v20, "Uruguay"

    const-string v22, "UY"

    const-string v24, "es"

    const-string v25, "CO"

    const/16 v21, 0x2c

    const/16 v23, 0xf8

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Uruguay:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 55
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v27, "Venezuala"

    const-string v29, "VE"

    const-string v31, "es"

    const-string v32, "CO"

    const/16 v28, 0x2d

    const/16 v30, 0xfc

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v32}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Venezuala:Lcom/ebay/common/view/util/OcsCountrySite;

    .line 56
    new-instance v0, Lcom/ebay/common/view/util/OcsCountrySite;

    const-string v1, "Zambia"

    const-string v2, "ZM"

    const/16 v14, 0x2e

    const/16 v15, 0x102

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/ebay/common/view/util/OcsCountrySite;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->Zambia:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v0, 0x2f

    .line 8
    new-array v0, v0, [Lcom/ebay/common/view/util/OcsCountrySite;

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Argentina:Lcom/ebay/common/view/util/OcsCountrySite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Bolivia:Lcom/ebay/common/view/util/OcsCountrySite;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Brazile:Lcom/ebay/common/view/util/OcsCountrySite;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Chile:Lcom/ebay/common/view/util/OcsCountrySite;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Columbia:Lcom/ebay/common/view/util/OcsCountrySite;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->CostaRica:Lcom/ebay/common/view/util/OcsCountrySite;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->DominicanRepublic:Lcom/ebay/common/view/util/OcsCountrySite;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Ecuador:Lcom/ebay/common/view/util/OcsCountrySite;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->ElSalvador:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Greenland:Lcom/ebay/common/view/util/OcsCountrySite;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Guatemala:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Honduras:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Mexico:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Nicaragua:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Panama:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Paraguay:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Romania:Lcom/ebay/common/view/util/OcsCountrySite;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->SaudiArabia:Lcom/ebay/common/view/util/OcsCountrySite;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->SlovakRepublic:Lcom/ebay/common/view/util/OcsCountrySite;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Taiwan:Lcom/ebay/common/view/util/OcsCountrySite;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->CzechRepublic:Lcom/ebay/common/view/util/OcsCountrySite;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Denmark:Lcom/ebay/common/view/util/OcsCountrySite;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Finland:Lcom/ebay/common/view/util/OcsCountrySite;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Greece:Lcom/ebay/common/view/util/OcsCountrySite;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Hungary:Lcom/ebay/common/view/util/OcsCountrySite;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Indonesia:Lcom/ebay/common/view/util/OcsCountrySite;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Isreal:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->NewZealand:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Norway:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Portugal:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->PuertoRico:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Russia:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->SouthAfrica:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Sweden:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Thailand:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Vietnam:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->China:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Japan:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Peru:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->SouthKorea:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Turkey:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Ukraine:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->UnitedArabEmirates:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Tajikistan:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Uruguay:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Venezuala:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/util/OcsCountrySite;->Zambia:Lcom/ebay/common/view/util/OcsCountrySite;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->$VALUES:[Lcom/ebay/common/view/util/OcsCountrySite;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/ebay/common/view/util/OcsCountrySite;->countryCode:Ljava/lang/String;

    .line 68
    iput p4, p0, Lcom/ebay/common/view/util/OcsCountrySite;->siteId:I

    const-string p1, "en"

    .line 69
    iput-object p1, p0, Lcom/ebay/common/view/util/OcsCountrySite;->languageCode:Ljava/lang/String;

    const-string p1, "US"

    .line 70
    iput-object p1, p0, Lcom/ebay/common/view/util/OcsCountrySite;->gbhCountryCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/ebay/common/view/util/OcsCountrySite;->countryCode:Ljava/lang/String;

    .line 76
    iput p4, p0, Lcom/ebay/common/view/util/OcsCountrySite;->siteId:I

    .line 77
    iput-object p5, p0, Lcom/ebay/common/view/util/OcsCountrySite;->languageCode:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/ebay/common/view/util/OcsCountrySite;->gbhCountryCode:Ljava/lang/String;

    return-void
.end method

.method public static getOcsCountrySite(Ljava/lang/String;)Lcom/ebay/common/view/util/OcsCountrySite;
    .locals 6

    .line 83
    sget-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->siteMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->siteMap:Ljava/util/HashMap;

    .line 86
    invoke-static {}, Lcom/ebay/common/view/util/OcsCountrySite;->values()[Lcom/ebay/common/view/util/OcsCountrySite;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 87
    sget-object v4, Lcom/ebay/common/view/util/OcsCountrySite;->siteMap:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/ebay/common/view/util/OcsCountrySite;->countryCode:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    sget-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->siteMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/view/util/OcsCountrySite;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/view/util/OcsCountrySite;
    .locals 1

    .line 8
    const-class v0, Lcom/ebay/common/view/util/OcsCountrySite;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/view/util/OcsCountrySite;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/view/util/OcsCountrySite;
    .locals 1

    .line 8
    sget-object v0, Lcom/ebay/common/view/util/OcsCountrySite;->$VALUES:[Lcom/ebay/common/view/util/OcsCountrySite;

    invoke-virtual {v0}, [Lcom/ebay/common/view/util/OcsCountrySite;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/view/util/OcsCountrySite;

    return-object v0
.end method
