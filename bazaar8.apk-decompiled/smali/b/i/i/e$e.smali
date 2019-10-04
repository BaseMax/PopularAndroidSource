.class public Lb/i/i/e$e;
.super Lb/i/i/e$d;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lb/i/i/e$c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/i/i/e$d;-><init>(Lb/i/i/e$c;)V

    .line 2
    iput-boolean p2, p0, Lb/i/i/e$e;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/i/i/e$e;->b:Z

    return v0
.end method
