.class public Lf/a/a/e/b/b/u;
.super Ljava/lang/Object;
.source "EditTextInflater.java"

# interfaces
.implements Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/u;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/u;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->b(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, ""

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_0

    if-lez v0, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x66c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 6
    :cond_2
    iget-object v0, p0, Lf/a/a/e/b/b/u;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->c(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/a/e/b/b/u;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->c(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lf/a/a/e/b/b/u;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;

    invoke-static {p1}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->c(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method
