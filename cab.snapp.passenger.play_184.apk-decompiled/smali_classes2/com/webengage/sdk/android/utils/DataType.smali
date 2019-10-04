.class public final enum Lcom/webengage/sdk/android/utils/DataType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/utils/DataType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/utils/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/webengage/sdk/android/utils/DataType;

.field public static final enum BOOLEAN:Lcom/webengage/sdk/android/utils/DataType;

.field public static final enum DATE:Lcom/webengage/sdk/android/utils/DataType;

.field public static final enum DOUBLE:Lcom/webengage/sdk/android/utils/DataType;

.field public static final enum INTEGER:Lcom/webengage/sdk/android/utils/DataType;

.field public static final enum LIST:Lcom/webengage/sdk/android/utils/DataType;

.field public static final enum LONG:Lcom/webengage/sdk/android/utils/DataType;

.field public static final enum MAP:Lcom/webengage/sdk/android/utils/DataType;

.field public static final enum NUMBER:Lcom/webengage/sdk/android/utils/DataType;

.field public static final enum STRING:Lcom/webengage/sdk/android/utils/DataType;

.field public static final enum UNKNOWN:Lcom/webengage/sdk/android/utils/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/webengage/sdk/android/utils/DataType;

    const/4 v1, 0x0

    const-string v2, "STRING"

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/DataType;->STRING:Lcom/webengage/sdk/android/utils/DataType;

    new-instance v0, Lcom/webengage/sdk/android/utils/DataType;

    const/4 v2, 0x1

    const-string v3, "INTEGER"

    invoke-direct {v0, v3, v2}, Lcom/webengage/sdk/android/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/DataType;->INTEGER:Lcom/webengage/sdk/android/utils/DataType;

    new-instance v0, Lcom/webengage/sdk/android/utils/DataType;

    const/4 v3, 0x2

    const-string v4, "LONG"

    invoke-direct {v0, v4, v3}, Lcom/webengage/sdk/android/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/DataType;->LONG:Lcom/webengage/sdk/android/utils/DataType;

    new-instance v0, Lcom/webengage/sdk/android/utils/DataType;

    const/4 v4, 0x3

    const-string v5, "DOUBLE"

    invoke-direct {v0, v5, v4}, Lcom/webengage/sdk/android/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/DataType;->DOUBLE:Lcom/webengage/sdk/android/utils/DataType;

    new-instance v0, Lcom/webengage/sdk/android/utils/DataType;

    const/4 v5, 0x4

    const-string v6, "BOOLEAN"

    invoke-direct {v0, v6, v5}, Lcom/webengage/sdk/android/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/DataType;->BOOLEAN:Lcom/webengage/sdk/android/utils/DataType;

    new-instance v0, Lcom/webengage/sdk/android/utils/DataType;

    const/4 v6, 0x5

    const-string v7, "LIST"

    invoke-direct {v0, v7, v6}, Lcom/webengage/sdk/android/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/DataType;->LIST:Lcom/webengage/sdk/android/utils/DataType;

    new-instance v0, Lcom/webengage/sdk/android/utils/DataType;

    const/4 v7, 0x6

    const-string v8, "MAP"

    invoke-direct {v0, v8, v7}, Lcom/webengage/sdk/android/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/DataType;->MAP:Lcom/webengage/sdk/android/utils/DataType;

    new-instance v0, Lcom/webengage/sdk/android/utils/DataType;

    const/4 v8, 0x7

    const-string v9, "DATE"

    invoke-direct {v0, v9, v8}, Lcom/webengage/sdk/android/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/DataType;->DATE:Lcom/webengage/sdk/android/utils/DataType;

    new-instance v0, Lcom/webengage/sdk/android/utils/DataType;

    const/16 v9, 0x8

    const-string v10, "NUMBER"

    invoke-direct {v0, v10, v9}, Lcom/webengage/sdk/android/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/DataType;->NUMBER:Lcom/webengage/sdk/android/utils/DataType;

    new-instance v0, Lcom/webengage/sdk/android/utils/DataType;

    const/16 v10, 0x9

    const-string v11, "UNKNOWN"

    invoke-direct {v0, v11, v10}, Lcom/webengage/sdk/android/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/webengage/sdk/android/utils/DataType;->UNKNOWN:Lcom/webengage/sdk/android/utils/DataType;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/webengage/sdk/android/utils/DataType;

    sget-object v11, Lcom/webengage/sdk/android/utils/DataType;->STRING:Lcom/webengage/sdk/android/utils/DataType;

    aput-object v11, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType;->INTEGER:Lcom/webengage/sdk/android/utils/DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType;->LONG:Lcom/webengage/sdk/android/utils/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType;->DOUBLE:Lcom/webengage/sdk/android/utils/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType;->BOOLEAN:Lcom/webengage/sdk/android/utils/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType;->LIST:Lcom/webengage/sdk/android/utils/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType;->MAP:Lcom/webengage/sdk/android/utils/DataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType;->DATE:Lcom/webengage/sdk/android/utils/DataType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType;->NUMBER:Lcom/webengage/sdk/android/utils/DataType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType;->UNKNOWN:Lcom/webengage/sdk/android/utils/DataType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/webengage/sdk/android/utils/DataType;->$VALUES:[Lcom/webengage/sdk/android/utils/DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lcom/webengage/sdk/android/utils/DataType$a;IZI)Lcom/webengage/sdk/android/utils/DataType$a;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/utils/DataType$a;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/webengage/sdk/android/utils/DataType;->detect(Ljava/lang/Object;)Lcom/webengage/sdk/android/utils/DataType;

    move-result-object v3

    sget-object v4, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x3

    const-string v5, " in event \'"

    const-string v6, "\n"

    const/16 v7, 0x3e8

    const-string v8, "\'\n"

    const-string v9, "Invalid value for key "

    const-string v10, "WebEngage"

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/utils/DataType$a;->b()Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_6

    :pswitch_1
    new-instance v1, Ljava/util/Date;

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/utils/DataType$a;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v11}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/utils/DataType$a;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v13, v11}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    invoke-static {v0, v1, v2, v7}, Lcom/webengage/sdk/android/utils/DataType;->a(Lcom/webengage/sdk/android/utils/DataType$a;IZI)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType$a;->d()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType$a;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType$a;->a()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    if-eqz v14, :cond_0

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v14, "Invalid attribute in event \'"

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    if-eqz v14, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-static {v10, v13}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eq v1, v4, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType$a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v7, 0x3e8

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v12, v11}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/utils/DataType$a;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v13, v11}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    const/16 v13, 0x32

    invoke-static {v0, v1, v2, v13}, Lcom/webengage/sdk/android/utils/DataType;->a(Lcom/webengage/sdk/android/utils/DataType$a;IZI)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType$a;->b()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v12, v13, v11}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    const/16 v12, 0x3e8

    invoke-static {v0, v1, v2, v12}, Lcom/webengage/sdk/android/utils/DataType;->a(Lcom/webengage/sdk/android/utils/DataType$a;IZI)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType$a;->d()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType$a;->a()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType$a;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType$a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType$a;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_5
    invoke-static {v10, v12}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v1, v4, :cond_8

    :cond_7
    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType$a;->b()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v0, v13}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v0, v7, v11}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    return-object v0

    :pswitch_4
    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/utils/DataType$a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v2, p3

    invoke-static {v1, v2}, Lcom/webengage/sdk/android/utils/k;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    return-object v0

    :cond_a
    :pswitch_5
    invoke-virtual {v0, v11}, Lcom/webengage/sdk/android/utils/DataType$a;->b(Ljava/lang/String;)V

    return-object v0

    :goto_6
    if-eqz v1, :cond_10

    const/4 v3, 0x1

    const-string v4, "Invalid data type \'"

    if-eq v1, v3, :cond_e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_c

    if-eqz v2, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'. Must be one of [String, Number, Boolean, List, Map, Date].\nDiscarded value."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_b
    const-string v1, "Value is null.\nDiscarded value"

    :goto_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    return-object v0

    :cond_c
    if-eqz v2, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'. Must be one of [String, Number, Boolean, List, Map, Date].\nConverted value to String."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    goto :goto_8

    :cond_d
    const-string v1, "Value is null."

    invoke-virtual {v0, v11, v1}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    :goto_8
    return-object v0

    :cond_e
    if-eqz v2, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. Must be one of [String, Number, Boolean, List, Map, Date].\nConverted value to null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_f
    move-object v1, v11

    :goto_9
    invoke-virtual {v0, v11, v1}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-virtual {v0, v2, v11}, Lcom/webengage/sdk/android/utils/DataType$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3

    :goto_0
    invoke-static {p0}, Lcom/webengage/sdk/android/utils/DataType;->detect(Ljava/lang/Object;)Lcom/webengage/sdk/android/utils/DataType;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    return-object p0

    :pswitch_1
    instance-of v0, p0, Lcom/webengage/sdk/android/utils/c;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/webengage/sdk/android/utils/c;

    invoke-interface {p0}, Lcom/webengage/sdk/android/utils/c;->toMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/a/c;->NULL:Ljava/lang/Object;

    return-object p0

    :pswitch_2
    if-eqz p1, :cond_1

    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "\'~t\'yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_1
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance v0, Lorg/a/a;

    invoke-direct {v0}, Lorg/a/a;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/webengage/sdk/android/utils/DataType;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/a/a;->put(Ljava/lang/Object;)Lorg/a/a;

    goto :goto_2

    :cond_2
    return-object v0

    :pswitch_4
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/webengage/sdk/android/utils/DataType;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/webengage/sdk/android/utils/DataType;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    goto :goto_3

    :cond_3
    return-object v0

    :pswitch_5
    check-cast p0, Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string p1, "~"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "^"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "`"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0

    :cond_6
    if-nez p0, :cond_7

    sget-object p0, Lorg/a/c;->NULL:Ljava/lang/Object;

    return-object p0

    :cond_7
    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown Data Type : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/Object;ZZI)Ljava/lang/Object;
    .locals 4

    invoke-static {p0}, Lcom/webengage/sdk/android/utils/DataType;->detect(Ljava/lang/Object;)Lcom/webengage/sdk/android/utils/DataType;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x3e8

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    new-instance p1, Ljava/util/Date;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    return-object p1

    :pswitch_2
    check-cast p0, Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2, v1}, Lcom/webengage/sdk/android/utils/DataType;->a(Ljava/lang/Object;ZZI)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p3

    :pswitch_3
    check-cast p0, Ljava/util/Map;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v2, p1, p2, v3}, Lcom/webengage/sdk/android/utils/DataType;->a(Ljava/lang/Object;ZZI)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2, v1}, Lcom/webengage/sdk/android/utils/DataType;->a(Ljava/lang/Object;ZZI)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object p3

    :pswitch_4
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/webengage/sdk/android/utils/k;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :pswitch_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static cloneExternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/webengage/sdk/android/utils/DataType;->cloneExternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cloneExternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/webengage/sdk/android/utils/DataType$a;

    invoke-direct {v0, p0, p1}, Lcom/webengage/sdk/android/utils/DataType$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x2

    const/4 p1, 0x1

    const v1, 0x7fffffff

    invoke-static {v0, p0, p1, v1}, Lcom/webengage/sdk/android/utils/DataType;->a(Lcom/webengage/sdk/android/utils/DataType$a;IZI)Lcom/webengage/sdk/android/utils/DataType$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/DataType$a;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "WebEngage"

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/DataType$a;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cloneInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p0, v0, v0, v1}, Lcom/webengage/sdk/android/utils/DataType;->a(Ljava/lang/Object;ZZI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Object;Lcom/webengage/sdk/android/utils/DataType;Z)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Lcom/webengage/sdk/android/utils/DataType;->detect(Ljava/lang/Object;)Lcom/webengage/sdk/android/utils/DataType;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    sget-object p1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be converted to Boolean"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be converted to Double"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be converted to Long"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be converted to Integer"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_7

    const/4 p2, 0x4

    if-eq p1, p2, :cond_6

    :pswitch_9
    sget-object p1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_5

    packed-switch p1, :pswitch_data_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be converted to Number"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_a
    return-object p0

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :cond_6
    return-object p0

    :cond_7
    new-instance p1, Ljava/text/SimpleDateFormat;

    if-eqz p2, :cond_8

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "\'~t\'yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :cond_8
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_0
    const-string p2, "UTC"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_a

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be converted to List"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p1, Lcom/webengage/sdk/android/utils/d;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v0, p2}, Lcom/webengage/sdk/android/utils/d;-><init>(Ljava/io/InputStream;Z)V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/d;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_c

    const/4 p2, 0x2

    if-ne p1, p2, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be converted to Map"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p1, Lcom/webengage/sdk/android/utils/d;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v0, p2}, Lcom/webengage/sdk/android/utils/d;-><init>(Ljava/io/InputStream;Z)V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/d;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-object v1, Lcom/webengage/sdk/android/utils/DataType$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/DataType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_5

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {p0, p2}, Lcom/webengage/sdk/android/utils/DataType;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unknown Data Type : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_9
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public static detect(Ljava/lang/Object;)Lcom/webengage/sdk/android/utils/DataType;
    .locals 1

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/webengage/sdk/android/utils/DataType;->LONG:Lcom/webengage/sdk/android/utils/DataType;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/webengage/sdk/android/utils/DataType;->INTEGER:Lcom/webengage/sdk/android/utils/DataType;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/webengage/sdk/android/utils/DataType;->BOOLEAN:Lcom/webengage/sdk/android/utils/DataType;

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/webengage/sdk/android/utils/DataType;->STRING:Lcom/webengage/sdk/android/utils/DataType;

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    sget-object p0, Lcom/webengage/sdk/android/utils/DataType;->DOUBLE:Lcom/webengage/sdk/android/utils/DataType;

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_5

    sget-object p0, Lcom/webengage/sdk/android/utils/DataType;->LIST:Lcom/webengage/sdk/android/utils/DataType;

    return-object p0

    :cond_5
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_6

    sget-object p0, Lcom/webengage/sdk/android/utils/DataType;->MAP:Lcom/webengage/sdk/android/utils/DataType;

    return-object p0

    :cond_6
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_7

    sget-object p0, Lcom/webengage/sdk/android/utils/DataType;->DATE:Lcom/webengage/sdk/android/utils/DataType;

    return-object p0

    :cond_7
    instance-of p0, p0, Ljava/lang/Number;

    if-eqz p0, :cond_8

    sget-object p0, Lcom/webengage/sdk/android/utils/DataType;->NUMBER:Lcom/webengage/sdk/android/utils/DataType;

    return-object p0

    :cond_8
    sget-object p0, Lcom/webengage/sdk/android/utils/DataType;->UNKNOWN:Lcom/webengage/sdk/android/utils/DataType;

    return-object p0
.end method

.method public static isNumber(Lcom/webengage/sdk/android/utils/DataType;)Z
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/utils/DataType;->INTEGER:Lcom/webengage/sdk/android/utils/DataType;

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/utils/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/utils/DataType;->LONG:Lcom/webengage/sdk/android/utils/DataType;

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/utils/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/utils/DataType;->DOUBLE:Lcom/webengage/sdk/android/utils/DataType;

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/utils/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/utils/DataType;->NUMBER:Lcom/webengage/sdk/android/utils/DataType;

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/utils/DataType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static valueByString(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/webengage/sdk/android/utils/DataType;->valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/utils/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/utils/DataType;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/utils/DataType;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/utils/DataType;->$VALUES:[Lcom/webengage/sdk/android/utils/DataType;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/utils/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/utils/DataType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/DataType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
