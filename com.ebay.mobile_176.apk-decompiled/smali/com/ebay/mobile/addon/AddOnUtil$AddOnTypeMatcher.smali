.class Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;
.super Ljava/lang/Object;
.source "AddOnUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/addon/AddOnUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddOnTypeMatcher"
.end annotation


# instance fields
.field supportedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    invoke-direct {p0, p1}, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;->nullSafeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, ","

    .line 497
    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 498
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;->supportedTypes:Ljava/util/Set;

    .line 499
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 500
    iget-object v2, p0, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;->supportedTypes:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;->nullSafeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private nullSafeTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public isSupport(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;->supportedTypes:Ljava/util/Set;

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;->supportedTypes:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;->nullSafeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
