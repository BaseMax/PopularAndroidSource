.class public Lb/b/g/p;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AppCompatMultiAutoCompleteTextView.java"

# interfaces
.implements Lb/i/k/u;


# static fields
.field public static final a:[I


# instance fields
.field public final b:Lb/b/g/i;

.field public final c:Lb/b/g/C;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Lb/b/g/p;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lb/b/a;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lb/b/g/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-static {p1}, Lb/b/g/ma;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lb/b/g/p;->a:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lb/b/g/pa;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lb/b/g/pa;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v1}, Lb/b/g/pa;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lb/b/g/pa;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lb/b/g/pa;->a()V

    .line 7
    new-instance p1, Lb/b/g/i;

    invoke-direct {p1, p0}, Lb/b/g/i;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lb/b/g/p;->b:Lb/b/g/i;

    .line 8
    iget-object p1, p0, Lb/b/g/p;->b:Lb/b/g/i;

    invoke-virtual {p1, p2, p3}, Lb/b/g/i;->a(Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Lb/b/g/C;

    invoke-direct {p1, p0}, Lb/b/g/C;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lb/b/g/p;->c:Lb/b/g/C;

    .line 10
    iget-object p1, p0, Lb/b/g/p;->c:Lb/b/g/C;

    invoke-virtual {p1, p2, p3}, Lb/b/g/C;->a(Landroid/util/AttributeSet;I)V

    .line 11
    iget-object p1, p0, Lb/b/g/p;->c:Lb/b/g/C;

    invoke-virtual {p1}, Lb/b/g/C;->a()V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lb/b/g/p;->b:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/b/g/i;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/b/g/p;->c:Lb/b/g/C;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lb/b/g/C;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/p;->b:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/g/i;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/p;->b:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/g/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lb/b/g/n;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lb/b/g/p;->b:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lb/b/g/i;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lb/b/g/p;->b:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lb/b/g/i;->a(I)V

    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/b/b/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/p;->b:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/b/g/i;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/p;->b:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/b/g/i;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lb/b/g/p;->c:Lb/b/g/C;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lb/b/g/C;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
