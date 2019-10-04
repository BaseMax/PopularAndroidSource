.class public final enum Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
.super Ljava/lang/Enum;
.source "AnswerResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RewriteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

.field public static final enum CATEGORY:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_constraint"
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DEALS:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deals_constraint"
    .end annotation
.end field

.field public static final enum FITMENT:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fitment"
    .end annotation
.end field

.field public static final enum KEYWORD:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyword_constraint"
    .end annotation
.end field

.field public static final enum OTHER:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

.field public static final enum QUERY_REWRITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "query_rewrite"
    .end annotation
.end field

.field public static final enum RECALL_FILTERING:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recall_filtering"
    .end annotation
.end field

.field public static final enum SITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "site_constraint"
    .end annotation
.end field

.field public static final enum SPELL_AUTO_CORRECT:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spell_auto_correct"
    .end annotation
.end field

.field public static final enum SPELL_CHECK:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spell_check"
    .end annotation
.end field


# instance fields
.field private final serviceValue:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 333
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->OTHER:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 334
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const-string v1, "SPELL_CHECK"

    const-string/jumbo v3, "spell_check"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SPELL_CHECK:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 336
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const-string v1, "SPELL_AUTO_CORRECT"

    const-string/jumbo v3, "spell_auto_correct"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SPELL_AUTO_CORRECT:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 338
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const-string v1, "QUERY_REWRITE"

    const-string v3, "query_rewrite"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->QUERY_REWRITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 340
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const-string v1, "KEYWORD"

    const-string v3, "keyword_constraint"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->KEYWORD:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 342
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const-string v1, "CATEGORY"

    const-string v3, "category_constraint"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->CATEGORY:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 344
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const-string v1, "SITE"

    const-string/jumbo v3, "site_constraint"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 346
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const-string v1, "DEALS"

    const-string v3, "deals_constraint"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->DEALS:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 348
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const-string v1, "RECALL_FILTERING"

    const-string/jumbo v3, "recall_filtering"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->RECALL_FILTERING:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 350
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const-string v1, "FITMENT"

    const-string v3, "fitment"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v3}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->FITMENT:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    const/16 v0, 0xa

    .line 331
    new-array v0, v0, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->OTHER:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SPELL_CHECK:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SPELL_AUTO_CORRECT:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->QUERY_REWRITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->KEYWORD:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->CATEGORY:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->DEALS:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->RECALL_FILTERING:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->FITMENT:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 417
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType$1;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType$1;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 362
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 363
    iput-object p1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->serviceValue:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 358
    iput-object p3, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->serviceValue:Ljava/lang/String;

    return-void
.end method

.method public static getTypeFromServiceString(Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .locals 1

    .line 368
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "deals_constraint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "site_constraint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "query_rewrite"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "recall_filtering"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "spell_check"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "spell_auto_correct"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "fitment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "keyword_constraint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "category_constraint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 389
    sget-object p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->OTHER:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object p0

    .line 387
    :pswitch_0
    sget-object p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->FITMENT:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object p0

    .line 385
    :pswitch_1
    sget-object p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->RECALL_FILTERING:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object p0

    .line 383
    :pswitch_2
    sget-object p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->DEALS:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object p0

    .line 381
    :pswitch_3
    sget-object p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object p0

    .line 379
    :pswitch_4
    sget-object p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->CATEGORY:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object p0

    .line 377
    :pswitch_5
    sget-object p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->KEYWORD:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object p0

    .line 375
    :pswitch_6
    sget-object p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->QUERY_REWRITE:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object p0

    .line 373
    :pswitch_7
    sget-object p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SPELL_AUTO_CORRECT:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object p0

    .line 371
    :pswitch_8
    sget-object p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SPELL_CHECK:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b08bc42 -> :sswitch_8
        -0x44a44e0d -> :sswitch_7
        -0x3281cf11 -> :sswitch_6
        0x26e9791 -> :sswitch_5
        0xdbdcb31 -> :sswitch_4
        0x2115c9bc -> :sswitch_3
        0x357fa915 -> :sswitch_2
        0x538309d5 -> :sswitch_1
        0x6f2e6f95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .locals 1

    .line 331
    const-class v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;
    .locals 1

    .line 331
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->$VALUES:[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->serviceValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->serviceValue:Ljava/lang/String;

    return-object v0

    .line 399
    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 411
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
