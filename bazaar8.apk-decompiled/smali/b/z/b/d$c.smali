.class public Lb/z/b/d$c;
.super Ljava/lang/Object;
.source "TableInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/z/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lb/z/b/d$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lb/z/b/d$c;->a:I

    .line 3
    iput p2, p0, Lb/z/b/d$c;->b:I

    .line 4
    iput-object p3, p0, Lb/z/b/d$c;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lb/z/b/d$c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lb/z/b/d$c;)I
    .locals 2

    .line 1
    iget v0, p0, Lb/z/b/d$c;->a:I

    iget v1, p1, Lb/z/b/d$c;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lb/z/b/d$c;->b:I

    iget p1, p1, Lb/z/b/d$c;->b:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/z/b/d$c;

    invoke-virtual {p0, p1}, Lb/z/b/d$c;->a(Lb/z/b/d$c;)I

    move-result p1

    return p1
.end method
