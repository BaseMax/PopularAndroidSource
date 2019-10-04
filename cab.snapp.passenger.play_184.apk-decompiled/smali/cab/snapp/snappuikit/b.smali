.class public final Lcab/snapp/snappuikit/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I


# instance fields
.field a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

.field b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget v0, Lcab/snapp/snappuikit/a$b;->pure_white:I

    sput v0, Lcab/snapp/snappuikit/b;->c:I

    .line 19
    sget v0, Lcab/snapp/snappuikit/a$b;->color_primary:I

    sput v0, Lcab/snapp/snappuikit/b;->d:I

    .line 23
    sget v0, Lcab/snapp/snappuikit/a$b;->old_silver:I

    sput v0, Lcab/snapp/snappuikit/b;->e:I

    .line 24
    sget v0, Lcab/snapp/snappuikit/a$e;->iran_sans_mobile_medium:I

    sput v0, Lcab/snapp/snappuikit/b;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcab/snapp/snappuikit/b;->b:Landroid/content/Context;

    .line 125
    new-instance v0, Lcom/muddzdev/styleabletoast/StyleableToast$a;

    invoke-direct {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-void
.end method

.method private constructor <init>(Lcom/muddzdev/styleabletoast/StyleableToast$a;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-void
.end method

.method public static makeText(Landroid/content/Context;I)Lcab/snapp/snappuikit/b;
    .locals 2

    .line 60
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance v0, Lcom/muddzdev/styleabletoast/StyleableToast$a;

    invoke-direct {v0, p0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->text(Ljava/lang/String;)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/b;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->textColor(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p1

    const/high16 v0, 0x41800000    # 16.0f

    .line 66
    invoke-virtual {p1, v0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->textSize(F)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/b;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->backgroundColor(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p1

    const/4 v0, 0x5

    .line 68
    invoke-virtual {p1, v0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->cornerRadius(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcab/snapp/snappuikit/b;->e:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->stroke(II)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p0

    sget p1, Lcab/snapp/snappuikit/b;->f:I

    .line 70
    invoke-virtual {p0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->font(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p0

    .line 72
    new-instance p1, Lcab/snapp/snappuikit/b;

    invoke-direct {p1, p0}, Lcab/snapp/snappuikit/b;-><init>(Lcom/muddzdev/styleabletoast/StyleableToast$a;)V

    return-object p1
.end method

.method public static makeText(Landroid/content/Context;II)Lcab/snapp/snappuikit/b;
    .locals 0

    .line 97
    invoke-static {p0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;I)Lcab/snapp/snappuikit/b;

    move-result-object p0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    if-eqz p2, :cond_0

    .line 2302
    iget-object p1, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 102
    invoke-virtual {p1, p2}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->iconStart(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    :cond_0
    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;
    .locals 2

    .line 44
    new-instance v0, Lcom/muddzdev/styleabletoast/StyleableToast$a;

    invoke-direct {v0, p0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->text(Ljava/lang/String;)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/b;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->textColor(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p1

    const/high16 v0, 0x41800000    # 16.0f

    .line 48
    invoke-virtual {p1, v0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->textSize(F)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/b;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->backgroundColor(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p1

    const/4 v0, 0x5

    .line 50
    invoke-virtual {p1, v0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->cornerRadius(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcab/snapp/snappuikit/b;->e:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->stroke(II)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p0

    sget p1, Lcab/snapp/snappuikit/b;->f:I

    .line 52
    invoke-virtual {p0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->font(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    move-result-object p0

    .line 54
    new-instance p1, Lcab/snapp/snappuikit/b;

    invoke-direct {p1, p0}, Lcab/snapp/snappuikit/b;-><init>(Lcom/muddzdev/styleabletoast/StyleableToast$a;)V

    return-object p1
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;I)Lcab/snapp/snappuikit/b;
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    if-eqz p2, :cond_0

    .line 1302
    iget-object p1, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 90
    invoke-virtual {p1, p2}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->iconStart(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final backgroundColor(I)Lcab/snapp/snappuikit/b;
    .locals 1

    .line 8302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 207
    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->backgroundColor(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final cornerRadius(I)Lcab/snapp/snappuikit/b;
    .locals 1

    .line 15302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 291
    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->cornerRadius(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final endIcon(I)Lcab/snapp/snappuikit/b;
    .locals 1

    .line 12302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 255
    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->iconEnd(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final gravity(I)Lcab/snapp/snappuikit/b;
    .locals 1

    .line 14302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 279
    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->gravity(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final length(I)Lcab/snapp/snappuikit/b;
    .locals 1

    .line 13302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 267
    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->length(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final setBackgroundSolid()Lcab/snapp/snappuikit/b;
    .locals 1

    .line 9302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 218
    invoke-virtual {v0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->solidBackground()Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final setFont(I)Lcab/snapp/snappuikit/b;
    .locals 1

    .line 6302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 183
    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->font(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final setTextBold()Lcab/snapp/snappuikit/b;
    .locals 1

    .line 5302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 171
    invoke-virtual {v0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->textBold()Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final show()V
    .locals 1

    .line 16302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 310
    invoke-virtual {v0}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->show()V

    return-void
.end method

.method public final startIcon(I)Lcab/snapp/snappuikit/b;
    .locals 1

    .line 11302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 243
    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->iconStart(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final stroke(II)Lcab/snapp/snappuikit/b;
    .locals 1

    .line 10302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 231
    invoke-virtual {v0, p1, p2}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->stroke(II)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final text(I)Lcab/snapp/snappuikit/b;
    .locals 2

    .line 3302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 148
    iget-object v1, p0, Lcab/snapp/snappuikit/b;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->text(Ljava/lang/String;)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lcab/snapp/snappuikit/b;
    .locals 1

    .line 136
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->text(Ljava/lang/String;)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final textColor(I)Lcab/snapp/snappuikit/b;
    .locals 1

    .line 4302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 160
    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->textColor(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method

.method public final textSize(F)Lcab/snapp/snappuikit/b;
    .locals 1

    .line 7302
    iget-object v0, p0, Lcab/snapp/snappuikit/b;->a:Lcom/muddzdev/styleabletoast/StyleableToast$a;

    .line 195
    invoke-virtual {v0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast$a;->textSize(F)Lcom/muddzdev/styleabletoast/StyleableToast$a;

    return-object p0
.end method
