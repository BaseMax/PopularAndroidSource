.class public final Lc/c/a/d/b/b;
.super Ljava/lang/Object;
.source "ButtonExt.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/d/b/c;->a(Landroid/view/View;Landroid/widget/EditText;Lh/f/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lh/f/a/b;


# direct methods
.method public constructor <init>(Landroid/view/View;Lh/f/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/d/b/b;->a:Landroid/view/View;

    iput-object p2, p0, Lc/c/a/d/b/b;->b:Lh/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lc/c/a/d/b/b;->a:Landroid/view/View;

    iget-object p3, p0, Lc/c/a/d/b/b;->b:Lh/f/a/b;

    invoke-interface {p3, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
