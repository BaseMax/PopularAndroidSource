.class public Lf/a/a/e/b/b/v;
.super Ljava/lang/Object;
.source "EditTextInflater.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

.field public final synthetic b:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/v;->b:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;

    iput-object p2, p0, Lf/a/a/e/b/b/v;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/b/v;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lf/a/a/e/b/b/v;->b:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->d(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/b/v;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
