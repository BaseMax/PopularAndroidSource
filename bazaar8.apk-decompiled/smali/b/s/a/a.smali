.class public abstract Lb/s/a/a;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lb/r/k;)Lb/s/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/r/k;",
            ":",
            "Lb/r/I;",
            ">(TT;)",
            "Lb/s/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/s/a/b;

    move-object v1, p0

    check-cast v1, Lb/r/I;

    invoke-interface {v1}, Lb/r/I;->e()Lb/r/H;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/s/a/b;-><init>(Lb/r/k;Lb/r/H;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
