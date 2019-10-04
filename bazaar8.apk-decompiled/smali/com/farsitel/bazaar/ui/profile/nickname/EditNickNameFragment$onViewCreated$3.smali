.class public final Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment$onViewCreated$3;
.super Lkotlin/jvm/internal/Lambda;
.source "EditNickNameFragment.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment$onViewCreated$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment$onViewCreated$3;

    invoke-direct {v0}, Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment$onViewCreated$3;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment$onViewCreated$3;->a:Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment$onViewCreated$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment$onViewCreated$3;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lh/k/m;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    xor-int/2addr p1, v0

    return p1
.end method
