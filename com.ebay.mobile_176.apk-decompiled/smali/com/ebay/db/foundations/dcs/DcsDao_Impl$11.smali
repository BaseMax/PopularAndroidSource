.class Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;
.super Landroidx/lifecycle/ComputableLiveData;
.source "DcsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->getDeveloperOverrideByName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/ComputableLiveData<",
        "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private _observer:Landroidx/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 1079
    iput-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    iput-object p3, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0, p2}, Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected compute()Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;
    .locals 31

    move-object/from16 v1, p0

    .line 1084
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->_observer:Landroidx/room/InvalidationTracker$Observer;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1085
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11$1;

    const-string v3, "dcs_property"

    new-array v4, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11$1;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->_observer:Landroidx/room/InvalidationTracker$Observer;

    .line 1091
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$200(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object v3, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->_observer:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v3}, Landroidx/room/InvalidationTracker;->addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 1093
    :cond_0
    iget-object v0, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$200(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v3, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string/jumbo v0, "propertyName"

    .line 1095
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v4, "priority"

    .line 1096
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "type"

    .line 1097
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "textValue"

    .line 1098
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "integerValue"

    .line 1099
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "realValue"

    .line 1100
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "sites"

    .line 1101
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "countryCodes"

    .line 1102
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "languageCodes"

    .line 1103
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "qaModes"

    .line 1104
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "isGbh"

    .line 1105
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "rolloutThreshold"

    .line 1106
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "minAndroidSdk"

    .line 1107
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v2, "descriptor"

    .line 1108
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string/jumbo v2, "state_lastUpdate"

    .line 1109
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v15

    const-string/jumbo v15, "state_ebaySite"

    .line 1110
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v14

    const-string/jumbo v14, "state_rolloutThreshold"

    .line 1111
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move/from16 v20, v13

    const-string/jumbo v13, "state_devOverridesEnabled"

    .line 1112
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v21, v12

    const-string/jumbo v12, "state_country"

    .line 1113
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move/from16 v22, v11

    const-string/jumbo v11, "state_language"

    .line 1114
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move/from16 v23, v10

    const-string/jumbo v10, "state_isGbh"

    .line 1115
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move/from16 v24, v9

    const-string/jumbo v9, "state_lastServiceUpdate"

    .line 1116
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move/from16 v25, v8

    const-string/jumbo v8, "state_entityTag"

    .line 1117
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1119
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    move/from16 v27, v7

    if-eqz v26, :cond_e

    .line 1121
    new-instance v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;

    invoke-direct {v7}, Lcom/ebay/db/foundations/dcs/DcsStateEntity;-><init>()V

    .line 1123
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1

    move/from16 v30, v6

    const/4 v2, 0x0

    goto :goto_0

    .line 1126
    :cond_1
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v30, v6

    .line 1128
    :goto_0
    iget-object v6, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v6}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$100(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastUpdate:Ljava/util/Date;

    .line 1130
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1131
    iget-object v6, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v6}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToDcsSiteCode(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->ebaySite:Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    .line 1132
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    iput v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->rolloutThreshold:F

    .line 1134
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1135
    :goto_1
    iput-boolean v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->devOverridesEnabled:Z

    .line 1137
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1138
    iget-object v12, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v12}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToCountryCode(Ljava/lang/String;)Lcom/ebay/nautilus/base/CountryCode;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->country:Lcom/ebay/nautilus/base/CountryCode;

    .line 1140
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1141
    iget-object v11, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v11}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToLanguageCode(Ljava/lang/String;)Lcom/ebay/nautilus/base/LanguageCode;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->language:Lcom/ebay/nautilus/base/LanguageCode;

    .line 1143
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    .line 1146
    :cond_3
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    .line 1148
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_4
    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->isGbh:Ljava/lang/Boolean;

    .line 1150
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_5

    .line 1153
    :cond_6
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1155
    :goto_5
    iget-object v9, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v9}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$100(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastServiceUpdate:Ljava/util/Date;

    .line 1156
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->entityTag:Ljava/lang/String;

    .line 1157
    new-instance v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;

    invoke-direct {v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;-><init>()V

    .line 1158
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->propertyName:Ljava/lang/String;

    .line 1159
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->priority:I

    .line 1161
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1162
    iget-object v4, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v4}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToDcsPropertyType(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->type:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    move/from16 v0, v30

    .line 1163
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->textValue:Ljava/lang/String;

    move/from16 v0, v27

    .line 1164
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    .line 1165
    iput-object v4, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->integerValue:Ljava/lang/Integer;

    :goto_6
    move/from16 v0, v25

    goto :goto_7

    .line 1167
    :cond_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->integerValue:Ljava/lang/Integer;

    goto :goto_6

    .line 1169
    :goto_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    .line 1170
    iput-object v4, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->realValue:Ljava/lang/Double;

    :goto_8
    move/from16 v0, v24

    goto :goto_9

    .line 1172
    :cond_8
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->realValue:Ljava/lang/Double;

    goto :goto_8

    .line 1175
    :goto_9
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1176
    iget-object v4, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v4}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEumSetOfDcsSiteCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->sites:Ljava/util/EnumSet;

    move/from16 v0, v23

    .line 1178
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1179
    iget-object v4, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v4}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEumSetOfCountryCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->countryCodes:Ljava/util/EnumSet;

    move/from16 v0, v22

    .line 1181
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1182
    iget-object v4, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v4}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEnumSetOfLanguageCode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->languageCodes:Ljava/util/EnumSet;

    move/from16 v0, v21

    .line 1184
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1185
    iget-object v4, v1, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v4}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$000(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/foundations/dcs/DcsTypeConverters;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ebay/db/foundations/dcs/DcsTypeConverters;->stringToEnumSetOfQaMode(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->qaModes:Ljava/util/EnumSet;

    move/from16 v0, v20

    .line 1187
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    goto :goto_a

    .line 1190
    :cond_9
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_a
    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    .line 1192
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v16, 0x1

    goto :goto_b

    :cond_b
    const/16 v16, 0x0

    :goto_b
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_c
    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->isGbh:Ljava/lang/Boolean;

    move/from16 v0, v19

    .line 1193
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    .line 1194
    iput-object v4, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->rolloutThreshold:Ljava/lang/Float;

    :goto_d
    move/from16 v0, v18

    goto :goto_e

    .line 1196
    :cond_c
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->rolloutThreshold:Ljava/lang/Float;

    goto :goto_d

    .line 1198
    :goto_e
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    .line 1199
    iput-object v4, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->minAndroidSdk:Ljava/lang/Integer;

    :goto_f
    move/from16 v0, v17

    goto :goto_10

    .line 1201
    :cond_d
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->minAndroidSdk:Ljava/lang/Integer;

    goto :goto_f

    .line 1203
    :goto_10
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->descriptor:Ljava/lang/String;

    .line 1204
    iput-object v7, v2, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->stateEntity:Lcom/ebay/db/foundations/dcs/DcsStateEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_11

    :cond_e
    const/4 v4, 0x0

    move-object v2, v4

    .line 1210
    :goto_11
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1211
    throw v0
.end method

.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->compute()Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$11;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
