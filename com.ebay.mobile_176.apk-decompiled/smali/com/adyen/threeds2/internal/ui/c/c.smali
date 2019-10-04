.class public Lcom/adyen/threeds2/internal/ui/c/c;
.super Lcom/adyen/threeds2/internal/ui/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adyen/threeds2/internal/ui/c/a<",
        "Lcom/adyen/threeds2/internal/a/a/b/a;",
        "Lcom/adyen/threeds2/internal/ui/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/adyen/threeds2/internal/ui/c/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/adyen/threeds2/internal/ui/c/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/adyen/threeds2/internal/ui/c/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getChallengeContainerLayoutId()I
    .locals 1

    .line 48
    sget v0, Lcom/adyen/threeds2/R$layout;->a3ds2_view_challenge_loading:I

    return v0
.end method
