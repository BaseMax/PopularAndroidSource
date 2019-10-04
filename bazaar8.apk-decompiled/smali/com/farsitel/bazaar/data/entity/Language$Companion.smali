.class public final Lcom/farsitel/bazaar/data/entity/Language$Companion;
.super Ljava/lang/Object;
.source "RequestPropertiesEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/entity/Language;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/data/entity/Language$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromLocale(Ljava/util/Locale;)Lcom/farsitel/bazaar/data/entity/Language;
    .locals 2

    const-string v0, "locale"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xca9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcbb

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "fa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/data/entity/Language;->PERSIAN:Lcom/farsitel/bazaar/data/entity/Language;

    goto :goto_1

    :cond_2
    const-string v0, "en"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    sget-object p1, Lcom/farsitel/bazaar/data/entity/Language;->ENGLISH:Lcom/farsitel/bazaar/data/entity/Language;

    goto :goto_1

    .line 5
    :cond_3
    :goto_0
    sget-object p1, Lcom/farsitel/bazaar/data/entity/Language;->ENGLISH:Lcom/farsitel/bazaar/data/entity/Language;

    :goto_1
    return-object p1
.end method
