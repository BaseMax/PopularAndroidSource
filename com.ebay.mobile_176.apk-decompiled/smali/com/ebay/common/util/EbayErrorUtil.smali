.class public final Lcom/ebay/common/util/EbayErrorUtil;
.super Ljava/lang/Object;
.source "EbayErrorUtil.java"


# static fields
.field public static final EXPIRED_IAF_TOKEN:I = 0x14e6d7d

.field public static final EXPIRED_IAF_TOKEN_STR:Ljava/lang/String;

.field public static final INVALID_IAF_TOKEN:I = 0x14e6d38

.field public static final INVALID_IAF_TOKEN_STR:Ljava/lang/String;

.field public static final OATH_INVALID_TOKEN:I = 0x3e9

.field public static final PPA_UPGRADE_REQUIRED:Ljava/lang/String; = "7005"

.field public static final PPA_UPGRADE_REQUIRED_ASQ:I = 0x14e7592

.field public static final SOA_INVALID_IAF_TOKEN:I = 0x2afa

.field public static final USER_ACCESS_LEVEL_UPGRADE_REQUIRED:Ljava/lang/String; = "21918010"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x14e6d38

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/util/EbayErrorUtil;->INVALID_IAF_TOKEN_STR:Ljava/lang/String;

    const v0, 0x14e6d7d

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/util/EbayErrorUtil;->EXPIRED_IAF_TOKEN_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final accountSuspended(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "2005"

    .line 143
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/common/util/EbayErrorUtil;->checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final carrierInvalid(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "21916773"

    .line 168
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/common/util/EbayErrorUtil;->checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final varargs checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 173
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    .line 176
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    .line 178
    instance-of v2, v1, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    if-nez v2, :cond_2

    goto :goto_0

    .line 180
    :cond_2
    check-cast v1, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    .line 181
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 183
    iget-object v5, v1, Lcom/ebay/nautilus/domain/net/EbayResponseError;->code:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v0
.end method

.method public static final containsError(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 96
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/ebay/common/util/EbayErrorUtil;->checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final forcedChangePassword(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "2007"

    .line 153
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/common/util/EbayErrorUtil;->checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final incorrectCredentials(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "2001"

    const-string v1, "21003"

    .line 129
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/common/util/EbayErrorUtil;->checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final internalError(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "2000"

    .line 138
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/common/util/EbayErrorUtil;->checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final missingPaypalSecurityKey(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "2006"

    .line 148
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/common/util/EbayErrorUtil;->checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final noProductMatch(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "41"

    .line 104
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/common/util/EbayErrorUtil;->checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final productIdInvalid(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "18"

    .line 112
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/common/util/EbayErrorUtil;->checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final savedSearchError(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "28"

    .line 121
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/common/util/EbayErrorUtil;->checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final userAccessLevelUpgradeRequired(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "21918010"

    .line 163
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "7005"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final userAccessLevelUpgradeRequired(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "21918010"

    const-string v1, "7005"

    .line 158
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ebay/common/util/EbayErrorUtil;->checkErrorId(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final userNotLoggedIn(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Z
    .locals 3

    .line 65
    instance-of v0, p0, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    invoke-interface {p0}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result v0

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2afa

    if-eq v0, v2, :cond_2

    const p0, 0x14e6d38

    if-eq v0, p0, :cond_1

    const p0, 0x14e6d7d

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "Security"

    .line 80
    invoke-interface {p0}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    const-string v0, "OAuth"

    .line 84
    invoke-interface {p0}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public static final userNotLoggedIn(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 46
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    .line 51
    invoke-static {v1}, Lcom/ebay/common/util/EbayErrorUtil;->userNotLoggedIn(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method
