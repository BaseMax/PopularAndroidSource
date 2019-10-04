.class public Lc/c/a/e/d/m/a/g;
.super Lb/z/e;
.source "PurchaseDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/m/a/o;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/e<",
        "Lc/c/a/e/d/m/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/m/a/o;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/a/o;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/m/a/g;->d:Lc/c/a/e/d/m/a/o;

    invoke-direct {p0, p2}, Lb/z/e;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lc/c/a/e/d/m/a/a;)V
    .locals 3

    .line 2
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->h()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 6
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->e()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 10
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 11
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 13
    :goto_2
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 14
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 16
    :goto_3
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 17
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_4

    .line 18
    :cond_4
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 19
    :goto_4
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 20
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_5

    .line 21
    :cond_5
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 22
    :goto_5
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->g()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_6

    .line 23
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_6

    .line 24
    :cond_6
    invoke-virtual {p2}, Lc/c/a/e/d/m/a/a;->g()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_6
    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lc/c/a/e/d/m/a/a;

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/m/a/g;->a(Lb/C/a/f;Lc/c/a/e/d/m/a/a;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `payments`(`purchaseToken`,`state`,`userId`,`purchaseTime`,`packageName`,`productId`,`productType`,`jsonPurchaseInfo`,`signature`) VALUES (?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
