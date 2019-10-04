.class final Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->animateText(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 172
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView$1;->a:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->getFormat()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcab/snapp/c/j;->formatInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
