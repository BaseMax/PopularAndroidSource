.class public final synthetic Lc/e/c/b/r;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/util/Map$Entry;

.field public final b:Lc/e/c/c/a;


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;Lc/e/c/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/c/b/r;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lc/e/c/b/r;->b:Lc/e/c/c/a;

    return-void
.end method

.method public static a(Ljava/util/Map$Entry;Lc/e/c/c/a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lc/e/c/b/r;

    invoke-direct {v0, p0, p1}, Lc/e/c/b/r;-><init>(Ljava/util/Map$Entry;Lc/e/c/c/a;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/e/c/b/r;->a:Ljava/util/Map$Entry;

    iget-object v1, p0, Lc/e/c/b/r;->b:Lc/e/c/c/a;

    invoke-static {v0, v1}, Lc/e/c/b/s;->a(Ljava/util/Map$Entry;Lc/e/c/c/a;)V

    return-void
.end method
