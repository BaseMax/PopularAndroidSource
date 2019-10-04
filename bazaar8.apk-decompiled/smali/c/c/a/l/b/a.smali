.class public final Lc/c/a/l/b/a;
.super Ljava/lang/Object;
.source "VendorData.kt"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc/c/a/l/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/l/b/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/l/b/a;->b:Ljava/lang/String;

    iput p3, p0, Lc/c/a/l/b/a;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILh/f/b/f;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/16 p3, 0xc8

    .line 2
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lc/c/a/l/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/l/b/a;->c:I

    return v0
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/ErrorModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/l/b/a;->b:Ljava/lang/String;

    const/16 p1, 0x1f4

    .line 6
    iput p1, p0, Lc/c/a/l/b/a;->c:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "vendorData"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/c/a/l/b/a;->b:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lc/c/a/l/b/a;->a:Ljava/lang/String;

    const/16 p1, 0xc8

    .line 4
    iput p1, p0, Lc/c/a/l/b/a;->c:I

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/l/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/l/b/a;->a:Ljava/lang/String;

    return-object v0
.end method
