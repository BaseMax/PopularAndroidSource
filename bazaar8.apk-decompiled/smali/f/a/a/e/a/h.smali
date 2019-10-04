.class public Lf/a/a/e/a/h;
.super Lf/a/a/e/a/p;
.source "FooterActionChanger.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lf/a/a/g/d/a/b;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/p;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/e/a/f;

    invoke-direct {v0, p0, p1}, Lf/a/a/e/a/f;-><init>(Lf/a/a/e/a/h;Z)V

    invoke-virtual {p0, v0}, Lf/a/a/e/a/p;->a(Lf/a/a/e/a/q;)V

    .line 3
    new-instance p1, Lf/a/a/e/a/a/c;

    invoke-direct {p1}, Lf/a/a/e/a/a/c;-><init>()V

    invoke-virtual {p0, p1}, Lf/a/a/e/a/p;->a(Lf/a/a/e/a/a/a;)V

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/a/h;)Lf/a/a/g/d/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/a/h;->d:Lf/a/a/g/d/a/b;

    return-object p0
.end method


# virtual methods
.method public a(Lf/a/a/g/d/a/b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lf/a/a/e/a/h;->d:Lf/a/a/g/d/a/b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/a/h;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/view/View;Lf/a/a/e/g;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 2
    iget-object v0, p0, Lf/a/a/e/a/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lf/a/a/e/a/h;->d:Lf/a/a/g/d/a/b;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lf/a/a/e/a/g;

    invoke-direct {v0, p0, p2, p1}, Lf/a/a/e/a/g;-><init>(Lf/a/a/e/a/h;Lf/a/a/e/g;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/h;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/a/e/a/h;->d:Lf/a/a/g/d/a/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
