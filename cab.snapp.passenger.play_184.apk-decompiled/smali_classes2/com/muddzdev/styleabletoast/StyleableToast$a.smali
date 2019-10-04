.class public final Lcom/muddzdev/styleabletoast/StyleableToast$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muddzdev/styleabletoast/StyleableToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:F

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:I

.field final o:Landroid/content/Context;

.field private p:Lcom/muddzdev/styleabletoast/StyleableToast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 273
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->a:I

    const/16 v0, 0x50

    .line 286
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->n:I

    .line 291
    iput-object p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final backgroundColor(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 0

    .line 323
    iput p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->b:I

    return-object p0
.end method

.method public final cornerRadius(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->o:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/muddzdev/styleabletoast/b;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->a:I

    return-object p0
.end method

.method public final font(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 0

    .line 318
    iput p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->h:I

    return-object p0
.end method

.method public final gravity(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 0

    .line 363
    iput p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->n:I

    return-object p0
.end method

.method public final iconEnd(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 0

    .line 355
    iput p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->f:I

    return-object p0
.end method

.method public final iconStart(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 0

    .line 350
    iput p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->e:I

    return-object p0
.end method

.method public final length(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 0

    .line 371
    iput p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->i:I

    return-object p0
.end method

.method public final show()V
    .locals 2

    .line 376
    new-instance v0, Lcom/muddzdev/styleabletoast/StyleableToast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/muddzdev/styleabletoast/StyleableToast;-><init>(Lcom/muddzdev/styleabletoast/StyleableToast$a;B)V

    iput-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->p:Lcom/muddzdev/styleabletoast/StyleableToast;

    .line 377
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->p:Lcom/muddzdev/styleabletoast/StyleableToast;

    invoke-virtual {v0}, Lcom/muddzdev/styleabletoast/StyleableToast;->show()V

    return-void
.end method

.method public final solidBackground()Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 1

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->k:Z

    return-object p0
.end method

.method public final stroke(II)Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->o:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/muddzdev/styleabletoast/b;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->d:I

    .line 337
    iput p2, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->c:I

    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final textBold()Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 1

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->l:Z

    return-object p0
.end method

.method public final textColor(I)Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 0

    .line 300
    iput p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->g:I

    return-object p0
.end method

.method public final textSize(F)Lcom/muddzdev/styleabletoast/StyleableToast$a;
    .locals 0

    .line 310
    iput p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast$a;->j:F

    return-object p0
.end method
