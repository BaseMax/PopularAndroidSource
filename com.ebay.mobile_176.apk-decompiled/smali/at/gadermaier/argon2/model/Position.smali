.class public Lat/gadermaier/argon2/model/Position;
.super Ljava/lang/Object;
.source "Position.java"


# instance fields
.field public index:I

.field public lane:I

.field public pass:I

.field public slice:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lat/gadermaier/argon2/model/Position;->pass:I

    .line 12
    iput p2, p0, Lat/gadermaier/argon2/model/Position;->lane:I

    .line 13
    iput p3, p0, Lat/gadermaier/argon2/model/Position;->slice:I

    .line 14
    iput p4, p0, Lat/gadermaier/argon2/model/Position;->index:I

    return-void
.end method
