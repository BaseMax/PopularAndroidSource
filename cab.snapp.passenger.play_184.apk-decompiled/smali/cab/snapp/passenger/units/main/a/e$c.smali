.class public final Lcab/snapp/passenger/units/main/a/e$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/main/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field public alpha:Landroid/view/View;

.field b:Landroidx/appcompat/widget/AppCompatTextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/LinearLayout;

.field e:Landroidx/appcompat/widget/AppCompatTextView;

.field f:Landroid/widget/ImageView;

.field public frame:Landroid/view/View;

.field g:Landroid/widget/LinearLayout;

.field h:Landroidx/appcompat/widget/AppCompatTextView;

.field i:Landroid/widget/ImageView;

.field final synthetic j:Lcab/snapp/passenger/units/main/a/e;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/main/a/e;Landroid/view/View;)V
    .locals 1

    .line 197
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    .line 198
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01a0

    .line 200
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->a:Landroid/widget/LinearLayout;

    const p1, 0x7f0a01a5

    .line 201
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->d:Landroid/widget/LinearLayout;

    const p1, 0x7f0a01a8

    .line 202
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->g:Landroid/widget/LinearLayout;

    .line 204
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->a:Landroid/widget/LinearLayout;

    new-instance v0, Lcab/snapp/passenger/units/main/a/-$$Lambda$e$c$XqkQuhWUjBOD5JJn-kW3n2bDy0s;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/main/a/-$$Lambda$e$c$XqkQuhWUjBOD5JJn-kW3n2bDy0s;-><init>(Lcab/snapp/passenger/units/main/a/e$c;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->d:Landroid/widget/LinearLayout;

    new-instance v0, Lcab/snapp/passenger/units/main/a/-$$Lambda$e$c$ZpyzADpHJziOntI84Gj_gyNW0YQ;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/main/a/-$$Lambda$e$c$ZpyzADpHJziOntI84Gj_gyNW0YQ;-><init>(Lcab/snapp/passenger/units/main/a/e$c;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->g:Landroid/widget/LinearLayout;

    new-instance v0, Lcab/snapp/passenger/units/main/a/-$$Lambda$e$c$5E97vpb5lTe31IDT-4P3adeaw4I;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/main/a/-$$Lambda$e$c$5E97vpb5lTe31IDT-4P3adeaw4I;-><init>(Lcab/snapp/passenger/units/main/a/e$c;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01a1

    .line 225
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->c:Landroid/widget/ImageView;

    const p1, 0x7f0a01a6

    .line 226
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->f:Landroid/widget/ImageView;

    const p1, 0x7f0a01a9

    .line 227
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->i:Landroid/widget/ImageView;

    const p1, 0x7f0a01a2

    .line 229
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a01a7

    .line 230
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a01aa

    .line 231
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->h:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a01a3

    .line 233
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->frame:Landroid/view/View;

    const p1, 0x7f0a019f

    .line 234
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->alpha:Landroid/view/View;

    .line 236
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->alpha:Landroid/view/View;

    new-instance p2, Lcab/snapp/passenger/units/main/a/-$$Lambda$e$c$iQubeZxNicBmNH6LQejwnffCzy0;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/main/a/-$$Lambda$e$c$iQubeZxNicBmNH6LQejwnffCzy0;-><init>(Lcab/snapp/passenger/units/main/a/e$c;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 237
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->a(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    :try_start_0
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v0, "Services"

    const-string v1, "TaponMap"

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 241
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "JekHome"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 247
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->a(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcab/snapp/passenger/units/main/a/e$f;->onItemClicked(I)V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    .line 219
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->a(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->a(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$f;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcab/snapp/passenger/units/main/a/e$f;->onItemClicked(I)V

    :cond_0
    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->a(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->a(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$f;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcab/snapp/passenger/units/main/a/e$f;->onItemClicked(I)V

    :cond_0
    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 1

    .line 205
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->a(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->a(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcab/snapp/passenger/units/main/a/e$f;->onItemClicked(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$5E97vpb5lTe31IDT-4P3adeaw4I(Lcab/snapp/passenger/units/main/a/e$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/a/e$c;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$XqkQuhWUjBOD5JJn-kW3n2bDy0s(Lcab/snapp/passenger/units/main/a/e$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/a/e$c;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ZpyzADpHJziOntI84Gj_gyNW0YQ(Lcab/snapp/passenger/units/main/a/e$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/a/e$c;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$iQubeZxNicBmNH6LQejwnffCzy0(Lcab/snapp/passenger/units/main/a/e$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/a/e$c;->a(Landroid/view/View;)V

    return-void
.end method
