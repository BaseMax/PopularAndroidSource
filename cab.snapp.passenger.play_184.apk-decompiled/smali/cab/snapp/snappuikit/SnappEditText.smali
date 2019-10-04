.class public Lcab/snapp/snappuikit/SnappEditText;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DEFAULT_HINT_COLOR:Ljava/lang/String; = "#D6DADE"

.field public static final DEFAULT_TEXT_COLOR:Ljava/lang/String; = "#344558"

.field public static final GRAVITY_CENTER:I = 0x0

.field public static final GRAVITY_END:I = 0x2

.field public static final GRAVITY_LEFT:I = 0x3

.field public static final GRAVITY_RIGHT:I = 0x4

.field public static final GRAVITY_START:I = 0x1

.field public static final IME_OPTION_DONE:I = 0x0

.field public static final IME_OPTION_NEXT:I = 0x1

.field public static final IME_OPTION_NONE:I = 0x3

.field public static final IME_OPTION_SEARCH:I = 0x2

.field public static final INPUT_TYPE_EMAIL:I = 0x3

.field public static final INPUT_TYPE_NUMBER:I = 0x4

.field public static final INPUT_TYPE_PASSWORD:I = 0x1

.field public static final INPUT_TYPE_PHONE:I = 0x2

.field public static final INPUT_TYPE_TEXT:I = 0x0

.field public static final INPUT_TYPE_TEXT_MULTILINE:I = 0x5


# instance fields
.field private A:I

.field private a:Landroidx/appcompat/widget/AppCompatEditText;

.field private b:Landroidx/appcompat/widget/AppCompatTextView;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Lcab/snapp/snappuikit/b/a;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->j:I

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappEditText;->p:Z

    .line 76
    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->q:I

    .line 94
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->j:I

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappEditText;->p:Z

    .line 76
    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->q:I

    .line 100
    sget-object v0, Lcab/snapp/snappuikit/a$h;->snappEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 101
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/content/res/TypedArray;)V

    .line 102
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->j:I

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappEditText;->p:Z

    .line 76
    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->q:I

    .line 108
    sget-object v1, Lcab/snapp/snappuikit/a$h;->snappEditText:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 109
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/content/res/TypedArray;)V

    .line 110
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappuikit/SnappEditText;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 0

    .line 28
    iget-object p0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setFocusable(Z)V

    .line 164
    iget v0, p0, Lcab/snapp/snappuikit/SnappEditText;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundColor(I)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_edittext_rounded_very_light_pink:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundResource(I)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcab/snapp/snappuikit/SnappEditText$1;

    invoke-direct {v1, p0}, Lcab/snapp/snappuikit/SnappEditText$1;-><init>(Lcab/snapp/snappuikit/SnappEditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 223
    sget v0, Lcab/snapp/snappuikit/a$g;->edittext_layout:I

    invoke-static {p1, v0, p0}, Lcab/snapp/snappuikit/SnappEditText;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 224
    sget v0, Lcab/snapp/snappuikit/a$f;->edittext_layout_edittext_inputData:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    .line 225
    sget v0, Lcab/snapp/snappuikit/a$f;->edittext_layout_textview_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 226
    sget v0, Lcab/snapp/snappuikit/a$f;->edittext_layout_button_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappEditText;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 227
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappEditText;->b()V

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 189
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etTextIcon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->e:Landroid/graphics/drawable/Drawable;

    .line 190
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etTextIconActivated:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->u:Landroid/graphics/drawable/Drawable;

    .line 191
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etHint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->f:Ljava/lang/String;

    .line 192
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->g:Ljava/lang/String;

    .line 193
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etHintColor:I

    const-string v1, "#D6DADE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->h:I

    .line 194
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etColor:I

    const-string v1, "#344558"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->i:I

    .line 195
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etBackgroundColor:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappEditText;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->j:I

    .line 197
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etBtnActionText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->k:Ljava/lang/String;

    .line 198
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etBtnActionIcon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->l:Landroid/graphics/drawable/Drawable;

    .line 200
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etInformationTextNormal:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->m:Ljava/lang/String;

    .line 201
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etInformationTextNormalIcon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->r:Landroid/graphics/drawable/Drawable;

    .line 203
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etInformationTextError:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->n:Ljava/lang/String;

    .line 204
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etInformationTextErrorIcon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->s:Landroid/graphics/drawable/Drawable;

    .line 206
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etInformationTextActivated:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->o:Ljava/lang/String;

    .line 207
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etInformationTextActivatedIcon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->t:Landroid/graphics/drawable/Drawable;

    .line 209
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etClickableMode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappEditText;->p:Z

    .line 211
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etSingleLine:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappEditText;->v:Z

    .line 212
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etMaxLine:I

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->w:I

    .line 213
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etMaxLength:I

    const v2, 0xf4240

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->x:I

    .line 214
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->y:I

    .line 215
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etImeOption:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->z:I

    .line 216
    sget v0, Lcab/snapp/snappuikit/a$h;->snappEditText_etInputType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->A:I

    .line 218
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 126
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 128
    invoke-virtual {p0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 132
    :cond_1
    invoke-virtual {p0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/snappuikit/SnappEditText;)Lcab/snapp/snappuikit/b/a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcab/snapp/snappuikit/SnappEditText;->d:Lcab/snapp/snappuikit/b/a;

    return-object p0
.end method

.method private b()V
    .locals 7

    .line 234
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappEditText;->v:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setSingleLine(Z)V

    .line 235
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iget v1, p0, Lcab/snapp/snappuikit/SnappEditText;->w:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setMaxLines(I)V

    .line 236
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcab/snapp/snappuikit/SnappEditText;->x:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 238
    iget v0, p0, Lcab/snapp/snappuikit/SnappEditText;->z:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_0

    .line 250
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatEditText;->setImeOptions(I)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setImeOptions(I)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatEditText;->setImeOptions(I)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setImeOptions(I)V

    .line 254
    :goto_0
    iget v0, p0, Lcab/snapp/snappuikit/SnappEditText;->A:I

    const/4 v5, 0x4

    if-eq v0, v1, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v2, :cond_3

    .line 275
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setInputType(I)V

    goto :goto_1

    .line 271
    :cond_3
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    const v6, 0x20001

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatEditText;->setInputType(I)V

    goto :goto_1

    .line 264
    :cond_4
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatEditText;->setInputType(I)V

    goto :goto_1

    .line 257
    :cond_5
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    const/16 v6, 0x21

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatEditText;->setInputType(I)V

    goto :goto_1

    .line 261
    :cond_6
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatEditText;->setInputType(I)V

    goto :goto_1

    .line 267
    :cond_7
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatEditText;->setInputType(I)V

    .line 279
    :goto_1
    iget v0, p0, Lcab/snapp/snappuikit/SnappEditText;->y:I

    if-eq v0, v1, :cond_b

    if-eq v0, v3, :cond_a

    if-eq v0, v4, :cond_9

    if-eq v0, v5, :cond_8

    .line 294
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setGravity(I)V

    goto :goto_2

    .line 291
    :cond_8
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setGravity(I)V

    goto :goto_2

    .line 288
    :cond_9
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatEditText;->setGravity(I)V

    goto :goto_2

    .line 285
    :cond_a
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setGravity(I)V

    goto :goto_2

    .line 282
    :cond_b
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setGravity(I)V

    .line 298
    :goto_2
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->f:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 303
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 305
    :cond_c
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iget v1, p0, Lcab/snapp/snappuikit/SnappEditText;->h:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setHintTextColor(I)V

    .line 307
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iget v1, p0, Lcab/snapp/snappuikit/SnappEditText;->i:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setTextColor(I)V

    .line 308
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappEditText;->p:Z

    if-eqz v0, :cond_d

    .line 310
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappEditText;->a()V

    .line 314
    :cond_d
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    .line 321
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->c:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcab/snapp/snappuikit/SnappEditText$2;

    invoke-direct {v1, p0}, Lcab/snapp/snappuikit/SnappEditText$2;-><init>(Lcab/snapp/snappuikit/SnappEditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcab/snapp/snappuikit/SnappEditText$3;

    invoke-direct {v1, p0}, Lcab/snapp/snappuikit/SnappEditText$3;-><init>(Lcab/snapp/snappuikit/SnappEditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private static b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 142
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 144
    invoke-virtual {p0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 148
    :cond_1
    invoke-virtual {p0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public getBtnActionView()Landroid/widget/TextView;
    .locals 1

    .line 632
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->c:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public getEditTextView()Landroid/widget/EditText;
    .locals 1

    .line 627
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    return-object v0
.end method

.method public getInfoTextView()Landroid/widget/TextView;
    .locals 1

    .line 637
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public getSnappEditTextClickListener()Lcab/snapp/snappuikit/b/a;
    .locals 1

    .line 603
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->d:Lcab/snapp/snappuikit/b/a;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 612
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideActionButton()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 622
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->length()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 657
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappEditText;->d:Lcab/snapp/snappuikit/b/a;

    if-eqz p1, :cond_0

    .line 659
    invoke-interface {p1}, Lcab/snapp/snappuikit/b/a;->onEditTextClicked()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 649
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setEditTextIconActivated(Z)V
    .locals 2

    .line 555
    iget v0, p0, Lcab/snapp/snappuikit/SnappEditText;->q:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 559
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->showActive()V

    return-void

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 587
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setEnabled(Z)V

    return-void
.end method

.method public setSnappEditTextClickListener(Lcab/snapp/snappuikit/b/a;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappEditText;->d:Lcab/snapp/snappuikit/b/a;

    .line 594
    invoke-interface {p1}, Lcab/snapp/snappuikit/b/a;->editTextClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 596
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappEditText;->p:Z

    .line 597
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappEditText;->a()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public showActionButton()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showActive()V
    .locals 3

    const/4 v0, 0x3

    .line 396
    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->q:I

    .line 397
    iget v0, p0, Lcab/snapp/snappuikit/SnappEditText;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 399
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundColor(I)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_edittext_rounded_dark:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundResource(I)V

    .line 414
    :goto_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 416
    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->m:Ljava/lang/String;

    .line 419
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->color_primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 422
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 424
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->color_primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 427
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 431
    :cond_2
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_3
    :goto_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 436
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->color_primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 437
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .line 439
    :cond_4
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 441
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->color_primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 442
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public showApproved()V
    .locals 3

    const/4 v0, 0x2

    .line 499
    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->q:I

    .line 500
    iget v0, p0, Lcab/snapp/snappuikit/SnappEditText;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 502
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundColor(I)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_edittext_rounded_green_blue_two:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundResource(I)V

    .line 510
    :goto_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 512
    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->o:Ljava/lang/String;

    .line 515
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->green_blue_two:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 519
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 521
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->green_blue_two:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 522
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 524
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 528
    :cond_2
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 531
    :cond_3
    :goto_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 533
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->green_blue_two:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 534
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .line 536
    :cond_4
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 538
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->green_blue_two:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 539
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public showError()V
    .locals 3

    const/4 v0, 0x1

    .line 448
    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->q:I

    .line 449
    iget v0, p0, Lcab/snapp/snappuikit/SnappEditText;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 451
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundColor(I)V

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_edittext_rounded_red:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundResource(I)V

    .line 459
    :goto_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 461
    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->m:Ljava/lang/String;

    .line 464
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->cherry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 467
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 469
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->cherry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 472
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 476
    :cond_2
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 479
    :cond_3
    :goto_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 481
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->cherry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 482
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .line 484
    :cond_4
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 486
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->cherry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 487
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappEditText;->n:Ljava/lang/String;

    .line 494
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->showError()V

    return-void
.end method

.method public showInActive()V
    .locals 3

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lcab/snapp/snappuikit/SnappEditText;->q:I

    .line 345
    iget v0, p0, Lcab/snapp/snappuikit/SnappEditText;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 347
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundColor(I)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_edittext_rounded_very_light_pink:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundResource(I)V

    .line 362
    :goto_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 364
    iput-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->m:Ljava/lang/String;

    .line 367
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->brown_grey:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 370
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 372
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->brown_grey:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 375
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 379
    :cond_2
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 382
    :cond_3
    :goto_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 384
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->brown_grey:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 385
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .line 387
    :cond_4
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 389
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->brown_grey:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 390
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappEditText;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappEditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method
