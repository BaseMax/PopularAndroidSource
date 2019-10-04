.class public final Lc/c/a/e/d/t/a/c;
.super Ljava/lang/Object;
.source "SeasonEpisodeRequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.seasonPageRequest"
.end annotation


# instance fields
.field public final identidier:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "identifier"
    .end annotation
.end field

.field public final limit:I
    .annotation runtime Lc/e/d/a/c;
        value = "limit"
    .end annotation
.end field

.field public final offset:I
    .annotation runtime Lc/e/d/a/c;
        value = "offset"
    .end annotation
.end field

.field public final seasonIndex:I
    .annotation runtime Lc/e/d/a/c;
        value = "seasonIndex"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 1

    const-string v0, "identidier"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/c/a/e/d/t/a/c;->offset:I

    iput p2, p0, Lc/c/a/e/d/t/a/c;->limit:I

    iput-object p3, p0, Lc/c/a/e/d/t/a/c;->identidier:Ljava/lang/String;

    iput p4, p0, Lc/c/a/e/d/t/a/c;->seasonIndex:I

    return-void
.end method
