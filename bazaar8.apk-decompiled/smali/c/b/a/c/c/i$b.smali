.class public Lc/b/a/c/c/i$b;
.super Lc/b/a/c/c/i$a;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/c/c/i$a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/c/c/j;

    invoke-direct {v0}, Lc/b/a/c/c/j;-><init>()V

    invoke-direct {p0, v0}, Lc/b/a/c/c/i$a;-><init>(Lc/b/a/c/c/i$d;)V

    return-void
.end method
