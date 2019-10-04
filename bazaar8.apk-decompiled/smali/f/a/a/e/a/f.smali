.class public Lf/a/a/e/a/f;
.super Ljava/lang/Object;
.source "FooterActionChanger.java"

# interfaces
.implements Lf/a/a/e/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/a/h;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lf/a/a/e/a/h;


# direct methods
.method public constructor <init>(Lf/a/a/e/a/h;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/f;->b:Lf/a/a/e/a/h;

    iput-boolean p2, p0, Lf/a/a/e/a/f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    sget v0, Lf/a/a/e;->footer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    iget-boolean v0, p0, Lf/a/a/e/a/f;->a:Z

    if-eqz v0, :cond_0

    sget v0, Lf/a/a/e;->button:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget v0, Lf/a/a/e;->secondarybutton:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 5
    new-instance p1, Lir/cafebazaar/inline/ui/changers/exceptions/ViewNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "footer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/a/e/a/f;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "primary"

    goto :goto_1

    :cond_1
    const-string v1, "secondary"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lir/cafebazaar/inline/ui/changers/exceptions/ViewNotFoundException;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-object p1

    .line 6
    :cond_3
    new-instance p1, Lir/cafebazaar/inline/ui/changers/exceptions/ViewNotFoundException;

    const-string v0, "footer"

    invoke-direct {p1, v0}, Lir/cafebazaar/inline/ui/changers/exceptions/ViewNotFoundException;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
