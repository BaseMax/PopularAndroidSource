.class public Lir/cafebazaar/inline/ui/SingleLineEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SingleLineEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/SingleLineEditText$a;
    }
.end annotation


# instance fields
.field public d:Lir/cafebazaar/inline/ui/SingleLineEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/SingleLineEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/SingleLineEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/SingleLineEditText;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 5
    invoke-virtual {p0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Lir/cafebazaar/inline/ui/SingleLineEditText;->d:Lir/cafebazaar/inline/ui/SingleLineEditText$a;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lir/cafebazaar/inline/ui/SingleLineEditText;->d:Lir/cafebazaar/inline/ui/SingleLineEditText$a;

    invoke-interface {p1}, Lir/cafebazaar/inline/ui/SingleLineEditText$a;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setSingleLineEditTextCommunicator(Lir/cafebazaar/inline/ui/SingleLineEditText$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ui/SingleLineEditText;->d:Lir/cafebazaar/inline/ui/SingleLineEditText$a;

    return-void
.end method
