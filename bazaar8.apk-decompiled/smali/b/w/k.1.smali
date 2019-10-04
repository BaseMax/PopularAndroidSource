.class public final Lb/w/k;
.super Ljava/lang/Object;
.source "NavControllerViewModel.java"

# interfaces
.implements Lb/r/F$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/w/l;
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
    new-instance p1, Lb/w/l;

    invoke-direct {p1}, Lb/w/l;-><init>()V

    return-object p1
.end method
