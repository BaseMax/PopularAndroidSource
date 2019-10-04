.class public Lb/i/h/f$a;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lb/i/h/f$b;


# direct methods
.method public constructor <init>(I[Lb/i/h/f$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lb/i/h/f$a;->a:I

    .line 3
    iput-object p2, p0, Lb/i/h/f$a;->b:[Lb/i/h/f$b;

    return-void
.end method


# virtual methods
.method public a()[Lb/i/h/f$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/h/f$a;->b:[Lb/i/h/f$b;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lb/i/h/f$a;->a:I

    return v0
.end method
