.class public Lc/e/d/b/a/E;
.super Lc/e/d/x;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters$26;->a(Lc/e/d/j;Lc/e/d/c/a;)Lc/e/d/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/d/x<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/e/d/x;

.field public final synthetic b:Lcom/google/gson/internal/bind/TypeAdapters$26;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/bind/TypeAdapters$26;Lc/e/d/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/d/b/a/E;->b:Lcom/google/gson/internal/bind/TypeAdapters$26;

    iput-object p2, p0, Lc/e/d/b/a/E;->a:Lc/e/d/x;

    invoke-direct {p0}, Lc/e/d/x;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/e/d/b/a/E;->a(Lc/e/d/d/b;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/d/d/b;)Ljava/sql/Timestamp;
    .locals 3

    .line 3
    iget-object v0, p0, Lc/e/d/b/a/E;->a:Lc/e/d/x;

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lc/e/d/b/a/E;->a(Lc/e/d/d/c;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Lc/e/d/d/c;Ljava/sql/Timestamp;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/d/b/a/E;->a:Lc/e/d/x;

    invoke-virtual {v0, p1, p2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    return-void
.end method
