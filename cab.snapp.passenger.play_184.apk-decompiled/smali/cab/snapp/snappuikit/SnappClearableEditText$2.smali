.class final Lcab/snapp/snappuikit/SnappClearableEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappClearableEditText;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/SnappClearableEditText;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/SnappClearableEditText;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText$2;->a:Lcab/snapp/snappuikit/SnappClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 128
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText$2;->a:Lcab/snapp/snappuikit/SnappClearableEditText;

    iget-object p1, p1, Lcab/snapp/snappuikit/SnappClearableEditText;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    sget v0, Lcab/snapp/snappuikit/a$d;->ic_empty_field_edit_text:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setBackgroundResource(I)V

    return-void

    .line 130
    :cond_1
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText$2;->a:Lcab/snapp/snappuikit/SnappClearableEditText;

    iget-object p1, p1, Lcab/snapp/snappuikit/SnappClearableEditText;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    sget v0, Lcab/snapp/snappuikit/a$d;->ic_clear_edit_text:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setBackgroundResource(I)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
