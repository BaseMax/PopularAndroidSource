.class public final Lb/s/a/c;
.super Ljava/lang/Object;
.source "LoaderManagerImpl.java"

# interfaces
.implements Lb/r/F$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/s/a/b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lb/r/E;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/r/E;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Lb/s/a/b$c;

    invoke-direct {p1}, Lb/s/a/b$c;-><init>()V

    return-object p1
.end method
