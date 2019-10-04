.class public Lb/f/a;
.super Lb/f/h;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/b;->b()Lb/f/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/f/h<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lb/f/b;


# direct methods
.method public constructor <init>(Lb/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/f/a;->d:Lb/f/b;

    invoke-direct {p0}, Lb/f/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lb/f/a;->d:Lb/f/b;

    invoke-virtual {v0, p1}, Lb/f/i;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a;->d:Lb/f/b;

    iget-object v0, v0, Lb/f/i;->f:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lb/f/a;->d:Lb/f/b;

    invoke-virtual {v0, p1, p2}, Lb/f/i;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 6
    iget-object v0, p0, Lb/f/a;->d:Lb/f/b;

    invoke-virtual {v0}, Lb/f/i;->clear()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lb/f/a;->d:Lb/f/b;

    invoke-virtual {v0, p1}, Lb/f/i;->d(I)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lb/f/a;->d:Lb/f/b;

    invoke-virtual {v0, p1, p2}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a;->d:Lb/f/b;

    invoke-virtual {v0, p1}, Lb/f/i;->c(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/f/a;->d:Lb/f/b;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a;->d:Lb/f/b;

    iget v0, v0, Lb/f/i;->g:I

    return v0
.end method
