.class public final Lcom/farsitel/bazaar/ui/login/LoginActivity$a;
.super Ljava/lang/Object;
.source "LoginActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/ui/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/farsitel/bazaar/ui/login/LoginActivity$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/ui/login/LoginActivity$a;Landroidx/fragment/app/Fragment;ILjava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const-string p3, ""

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 1
    sget-object p4, Lcom/farsitel/bazaar/common/model/login/LoginType;->DEFAULT:Lcom/farsitel/bazaar/common/model/login/LoginType;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/ui/login/LoginActivity$a;->a(Landroidx/fragment/app/Fragment;ILjava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;ILjava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;)V
    .locals 5

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dealerPackageName"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loginType"

    invoke-static {p4, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v3

    const-class v4, Lcom/farsitel/bazaar/ui/login/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1, v2, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Lb/o/a/i;ILjava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dealerPackageName"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loginType"

    invoke-static {p4, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/farsitel/bazaar/ui/login/LoginActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v2, p2}, Lb/o/a/i;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
