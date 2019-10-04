.class public final Lc/c/a/e/j/a;
.super Lc/e/d/x;
.source "DtoUnwrapTypeAdapterFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;->a(Lc/e/d/j;Lc/e/d/c/a;)Lc/e/d/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/d/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;

.field public final synthetic b:Lc/e/d/x;

.field public final synthetic c:Lc/e/d/x;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;Lc/e/d/x;Lc/e/d/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/x;",
            "Lc/e/d/x;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/e/j/a;->a:Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;

    iput-object p2, p0, Lc/c/a/e/j/a;->b:Lc/e/d/x;

    iput-object p3, p0, Lc/c/a/e/j/a;->c:Lc/e/d/x;

    invoke-direct {p0}, Lc/e/d/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/b;",
            ")TT;"
        }
    .end annotation

    const-string v0, "in"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/e/j/a;->c:Lc/e/d/x;

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/d/p;

    .line 3
    iget-object v0, p0, Lc/c/a/e/j/a;->a:Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;

    const-string v1, "jsonElement"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;->a(Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;Lc/e/d/p;)Lc/e/d/p;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lc/c/a/e/j/a;->b:Lc/e/d/x;

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/c;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/j/a;->b:Lc/e/d/x;

    invoke-virtual {v0, p1, p2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    return-void
.end method
