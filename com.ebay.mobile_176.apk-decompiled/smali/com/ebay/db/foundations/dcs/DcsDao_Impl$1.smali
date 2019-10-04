.class Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "DcsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/foundations/dcs/DcsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;


# direct methods
.method constructor <init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;)V
    .locals 9

    .line 60
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->propertyName:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 61
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->propertyName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 65
    iget v1, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->priority:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 67
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->type:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    invoke-virtual {v0, v1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->dcsPropertyTypeToString(Lcom/ebay/db/foundations/dcs/DcsPropertyType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 69
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 73
    :goto_1
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->textValue:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 74
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 76
    :cond_2
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->textValue:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 78
    :goto_2
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->integerValue:Ljava/lang/Integer;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 79
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 81
    :cond_3
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->integerValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 83
    :goto_3
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->realValue:Ljava/lang/Double;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 84
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 86
    :cond_4
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->realValue:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 89
    :goto_4
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->sites:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->setOfDcsSiteCodeToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 91
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 93
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    :goto_5
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->countryCodes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->setOfCountryCodeToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 98
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 100
    :cond_6
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    :goto_6
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->languageCodes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->setOfLanguageCodeToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_7

    .line 105
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 107
    :cond_7
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 110
    :goto_7
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->qaModes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->setOfQaModeToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/16 v0, 0xa

    .line 112
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    :cond_8
    const/16 v1, 0xa

    .line 114
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 117
    :goto_8
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->isGbh:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->isGbh:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_9
    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 119
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_a

    :cond_a
    const/16 v1, 0xb

    .line 121
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 123
    :goto_a
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->rolloutThreshold:Ljava/lang/Float;

    if-nez v0, :cond_b

    const/16 v0, 0xc

    .line 124
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_b

    :cond_b
    const/16 v0, 0xc

    .line 126
    iget-object v1, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->rolloutThreshold:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 128
    :goto_b
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->minAndroidSdk:Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/16 v0, 0xd

    .line 129
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_c

    :cond_c
    const/16 v0, 0xd

    .line 131
    iget-object v1, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->minAndroidSdk:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 133
    :goto_c
    iget-object v0, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->descriptor:Ljava/lang/String;

    if-nez v0, :cond_d

    const/16 v0, 0xe

    .line 134
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_d

    :cond_d
    const/16 v0, 0xe

    .line 136
    iget-object v1, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->descriptor:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 138
    :goto_d
    iget-object p2, p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->stateEntity:Lcom/ebay/db/foundations/dcs/DcsStateEntity;

    const/16 v0, 0x17

    const/16 v1, 0x16

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x10

    const/16 v6, 0xf

    if-eqz p2, :cond_16

    .line 141
    iget-object v7, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v7}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$100(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;

    move-result-object v7

    iget-object v8, p2, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastUpdate:Ljava/util/Date;

    invoke-virtual {v7, v8}, Lcom/ebay/db/typeconverters/DateTypeConverter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_e

    .line 143
    invoke-interface {p1, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 145
    :cond_e
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {p1, v6, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 148
    :goto_e
    iget-object v6, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v6}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v6

    iget-object v7, p2, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->ebaySite:Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    invoke-virtual {v6, v7}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->dcsSiteCodeToString(Lcom/ebay/db/foundations/dcs/DcsSiteCode;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_f

    .line 150
    invoke-interface {p1, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_f

    .line 152
    :cond_f
    invoke-interface {p1, v5, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_f
    const/16 v5, 0x11

    .line 154
    iget v6, p2, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->rolloutThreshold:F

    float-to-double v6, v6

    invoke-interface {p1, v5, v6, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 156
    iget-boolean v5, p2, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->devOverridesEnabled:Z

    const/16 v6, 0x12

    int-to-long v7, v5

    .line 157
    invoke-interface {p1, v6, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 159
    iget-object v5, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v5}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v5

    iget-object v6, p2, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->country:Lcom/ebay/nautilus/base/CountryCode;

    invoke-virtual {v5, v6}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->countryCodeToString(Lcom/ebay/nautilus/base/CountryCode;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10

    .line 161
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_10

    .line 163
    :cond_10
    invoke-interface {p1, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 166
    :goto_10
    iget-object v4, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v4}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v4

    iget-object v5, p2, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->language:Lcom/ebay/nautilus/base/LanguageCode;

    invoke-virtual {v4, v5}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->languageCodeToString(Lcom/ebay/nautilus/base/LanguageCode;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    .line 168
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_11

    .line 170
    :cond_11
    invoke-interface {p1, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 173
    :goto_11
    iget-object v3, p2, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->isGbh:Ljava/lang/Boolean;

    if-nez v3, :cond_12

    const/4 v3, 0x0

    goto :goto_12

    :cond_12
    iget-object v3, p2, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->isGbh:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_12
    if-nez v3, :cond_13

    .line 175
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_13

    .line 177
    :cond_13
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 180
    :goto_13
    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v2}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$100(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;

    move-result-object v2

    iget-object v3, p2, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastServiceUpdate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lcom/ebay/db/typeconverters/DateTypeConverter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_14

    .line 182
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_14

    .line 184
    :cond_14
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 186
    :goto_14
    iget-object v1, p2, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->entityTag:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 187
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 189
    :cond_15
    iget-object p2, p2, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->entityTag:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_15

    .line 192
    :cond_16
    invoke-interface {p1, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 193
    invoke-interface {p1, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    const/16 p2, 0x11

    .line 194
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    const/16 p2, 0x12

    .line 195
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 196
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 197
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 198
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 199
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 200
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    :goto_15
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `dcs_property`(`propertyName`,`priority`,`type`,`textValue`,`integerValue`,`realValue`,`sites`,`countryCodes`,`languageCodes`,`qaModes`,`isGbh`,`rolloutThreshold`,`minAndroidSdk`,`descriptor`,`state_lastUpdate`,`state_ebaySite`,`state_rolloutThreshold`,`state_devOverridesEnabled`,`state_country`,`state_language`,`state_isGbh`,`state_lastServiceUpdate`,`state_entityTag`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
