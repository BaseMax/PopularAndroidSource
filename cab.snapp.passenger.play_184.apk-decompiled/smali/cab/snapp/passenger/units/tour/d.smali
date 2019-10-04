.class final Lcab/snapp/passenger/units/tour/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcab/snapp/passenger/units/tour/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLayoutResId()I
    .locals 1

    .line 20
    iget v0, p0, Lcab/snapp/passenger/units/tour/d;->b:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final setLayoutResId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcab/snapp/passenger/units/tour/d;->b:I

    return-void
.end method
