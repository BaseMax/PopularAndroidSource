.class synthetic Lcom/ebay/common/view/RewriteViewHolder$1;
.super Ljava/lang/Object;
.source "RewriteViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/RewriteViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$common$net$api$search$answers$wire$AnswerResponse$RewriteType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    invoke-static {}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->values()[Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/common/view/RewriteViewHolder$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$AnswerResponse$RewriteType:[I

    :try_start_0
    sget-object v0, Lcom/ebay/common/view/RewriteViewHolder$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$AnswerResponse$RewriteType:[I

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SPELL_CHECK:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ebay/common/view/RewriteViewHolder$1;->$SwitchMap$com$ebay$common$net$api$search$answers$wire$AnswerResponse$RewriteType:[I

    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->SPELL_AUTO_CORRECT:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    invoke-virtual {v1}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
