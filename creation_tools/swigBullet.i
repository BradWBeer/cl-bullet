%module(directors="1") swigbullet


%{
#include <BulletSoftBody/btSoftBody.h>
#include <BulletSoftBody/btSoftBodyHelpers.h>
#include <BulletSoftBody/btSoftRigidDynamicsWorld.h>
#include <BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h>
#include <BulletSoftBody/btDefaultSoftBodySolver.h>
#include <btBulletDynamicsCommon.h>
%}

%{
typedef btSoftBody::Element Element;
typedef btSoftBody::Material Material;
typedef btSoftBody::Feature Feature;
typedef btSoftBody::Config Config;
typedef btSoftBody::Node Node;
typedef btSoftBody::fCollision fCollision;
%}

%ignore btSoftBody::m_fdbvt;
%ignore btSoftBody::m_ndbvt;
%ignore btSoftBody::m_cdbvt;

%rename (btlength) length;
%rename (btdot) dot;


%rename (btVector3_default) btVector3::btVector3();
%rename (btVector4_default) btVector4::btVector4();
%rename (btTransform_default) btTransform::btTransform();

%rename (btMatrix3x3_default) btMatrix3x3::btMatrix3x3();
%rename (btMatrix3x3_from_btQuaternion) btMatrix3x3::btMatrix3x3(const btQuaternion &q);
%rename (btMatrix3x3_from_btScalars)    btMatrix3x3::btMatrix3x3 (btScalarxx, btScalarxy, btScalarxz, btScalaryx, btScalaryy, btScalaryz, btScalarzx, btScalarzy, btScalarzz); 
%rename (btMatrix3x3_from_btMatrix3x3) btMatrix3x3::btMatrix3x3(const btMatrix3x3 &other);

%rename (btQuadWord_default) btQuadWord::btQuadWord();
%rename (btQuadWord_xyz) btQuadWord::btQuadWord(btScalar x, btScalar y, btScalar z);
%rename (btQuadWord_xyzw) btQuadWord::btQuadWord(btScalar x, btScalar y, btScalar z, btScalar w);

%rename (btTransform_default) btTransform::btTransform();
%rename (btTransform_from_btQuaternion) btTransform::btTransform (const btQuaternion &q);

%rename (btTransform_from_btQuaternion_and_btVector) btTransform::btTransform(const btQuaternion &q, const btVector3 &c);
%rename (btTransform_from_btMatrix)     btTransform::btTransform (const btMatrix3x3 &b);
%rename (btTransform_from_btMatrix_and_btVector)     btTransform::btTransform (const btMatrix3x3 &b, const btVector3 &c);
%rename (btTransform_from_btTransform) btTransform::btTransform(const btTransform &other);

%rename (btQuaternion_default) btQuaternion::btQuaternion();
%rename (btQuaternion_from_4btScalars) btQuaternion::btQuaternion (btScalar x, btScalar y, btScalar z, btScalar w);
%rename (btQuaternion_from_3btScalars) btQuaternion::btQuaternion (btScalar x, btScalar y, btScalar z);
%rename (btQuaternion_from_2btScalars) btQuaternion::btQuaternion (btScalar x, btScalar y);
%rename (btQuaternion_from_btVector_and_btScalar) btQuaternion::btQuaternion (const btVector3 &_axis, btScalar_angle);
%rename (btQuaternion_from_yaw_pitch_and_roll)    btQuaternion::btQuaternion (btScalaryaw, btScalarpitch, btScalarroll);

%rename (btRigidBody_from_btRigidBodyConstructionInfo) btRigidBody::btRigidBody (const btRigidBodyConstructionInfo &constructionInfo);
%rename (btRigidBody_backward_compatible) btRigidBody::btRigidBody (btScalar mass, btMotionState *motionState, btCollisionShape *collisionShape, const btVector3 &localInertia);
 
%rename (btConeTwistConstraint_2) btConeTwistConstraint::btConeTwistConstraint (btRigidBody &rbA, btRigidBody &rbB, const btTransform &rbAFrame, const btTransform &rbBFrame);
%rename (btConvexHullShape_3) btConvexHullShape::btConvexHullShape(const btScalar * points,
								   int  	numPoints,
								   int  	stride);
%rename (btConvexHullShape_2) btConvexHullShape::btConvexHullShape(const btScalar * points,
								   int  	numPoints);
%rename (btConvexHullShape_1) btConvexHullShape::btConvexHullShape(const btScalar * points);
%rename (btConvexHullShape_0) btConvexHullShape::btConvexHullShape();
			


//btSoftBody nested classes
struct Element
{
	void*			m_tag;	// User data
	Element() : m_tag(0) {}
};

struct fCollision {
	enum _ {
		RVSmask	=	0x000f,	///Rigid versus soft mask
		SDF_RS	=	0x0001,	///SDF based rigid vs soft
		CL_RS	=	0x0002, ///Cluster vs convex rigid vs soft
		SVSmask	=	0x0030,	///Rigid versus soft mask		
		VF_SS	=	0x0010,	///Vertex vs face soft vs soft handling
		CL_SS	=	0x0020, ///Cluster vs cluster soft vs soft handling
		CL_SELF =	0x0040, ///Cluster soft body self collision
		/* presets	*/ 
		Default	=	SDF_RS,
		END
	};
};

struct Material : Element
{
	btScalar				m_kLST;			// Linear stiffness coefficient [0,1]
	btScalar				m_kAST;			// Area/Angular stiffness coefficient [0,1]
	btScalar				m_kVST;			// Volume stiffness coefficient [0,1]
	int						m_flags;		// Flags
};

struct Feature : Element
{
	Material*				m_material;		// Material
};

struct Config
{
	//eAeroModel::_			aeromodel;		// Aerodynamic model (default: V_Point)
	btScalar				kVCF;			// Velocities correction factor (Baumgarte)
	btScalar				kDP;			// Damping coefficient [0,1]
	btScalar				kDG;			// Drag coefficient [0,+inf]
	btScalar				kLF;			// Lift coefficient [0,+inf]
	btScalar				kPR;			// Pressure coefficient [-inf,+inf]
	btScalar				kVC;			// Volume conversation coefficient [0,+inf]
	btScalar				kDF;			// Dynamic friction coefficient [0,1]
	btScalar				kMT;			// Pose matching coefficient [0,1]		
	btScalar				kCHR;			// Rigid contacts hardness [0,1]
	btScalar				kKHR;			// Kinetic contacts hardness [0,1]
	btScalar				kSHR;			// Soft contacts hardness [0,1]
	btScalar				kAHR;			// Anchors hardness [0,1]
	btScalar				kSRHR_CL;		// Soft vs rigid hardness [0,1] (cluster only)
	btScalar				kSKHR_CL;		// Soft vs kinetic hardness [0,1] (cluster only)
	btScalar				kSSHR_CL;		// Soft vs soft hardness [0,1] (cluster only)
	btScalar				kSR_SPLT_CL;	// Soft vs rigid impulse split [0,1] (cluster only)
	btScalar				kSK_SPLT_CL;	// Soft vs rigid impulse split [0,1] (cluster only)
	btScalar				kSS_SPLT_CL;	// Soft vs rigid impulse split [0,1] (cluster only)
	btScalar				maxvolume;		// Maximum volume ratio for pose
	btScalar				timescale;		// Time scale
	int						viterations;	// Velocities solver iterations
	int						piterations;	// Positions solver iterations
	int						diterations;	// Drift solver iterations
	int						citerations;	// Cluster solver iterations
	int						collisions;		// Collisions flags
	//tVSolverArray			m_vsequence;	// Velocity solvers sequence
	//tPSolverArray			m_psequence;	// Position solvers sequence
	//tPSolverArray			m_dsequence;	// Drift solvers sequence
};

struct Node : Feature
{
	btVector3				m_x;			// Position
	btVector3				m_q;			// Previous step position
	btVector3				m_v;			// Velocity
	btVector3				m_f;			// Force accumulator
	btVector3				m_n;			// Normal
	btScalar				m_im;			// 1/mass
	btScalar				m_area;			// Area
	btDbvtNode*				m_leaf;			// Leaf data
	int						m_battach:1;	// Attached
};

%rename length btlength;

%nestedworkaround btSoftBody::Element;
%nestedworkaround btSoftBody::Material;
%nestedworkaround btSoftBody::fCollision;
%nestedworkaround btSoftBody::Feature;
%nestedworkaround btSoftBody::Config;
%nestedworkaround btSoftBody::Node;

%include carrays.i
%include stl.i
%include "btBulletDynamicsCommon.h"
%include "btBulletCollisionCommon.h"

%include "LinearMath/btScalar.h"
%include "LinearMath/btVector3.h"
%include "LinearMath/btQuadWord.h"
%include "LinearMath/btQuaternion.h"
%include "LinearMath/btTransform.h"
%include "LinearMath/btMatrix3x3.h"
%include "LinearMath/btMotionState.h"
%include "LinearMath/btAlignedObjectArray.h"
%include "LinearMath/btDefaultMotionState.h"

%include "BulletCollision/BroadphaseCollision/btBroadphaseProxy.h"
%include "BulletCollision/BroadphaseCollision/btBroadphaseInterface.h"
%include "BulletCollision/BroadphaseCollision/btDbvtBroadphase.h"
%include "BulletCollision/BroadphaseCollision/btDispatcher.h"

%include "BulletCollision/CollisionDispatch/btCollisionConfiguration.h"
%include "BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h"
%include "BulletCollision/CollisionDispatch/btCollisionDispatcher.h"
%include "BulletCollision/CollisionDispatch/btCollisionObject.h"
%include "BulletCollision/CollisionDispatch/btCollisionWorld.h"

%include "BulletCollision/CollisionShapes/btCollisionShape.h"
%include "BulletCollision/CollisionShapes/btConvexShape.h"
%include "BulletCollision/CollisionShapes/btConvexInternalShape.h"
%include "BulletCollision/CollisionShapes/btPolyhedralConvexShape.h"
%include "BulletCollision/CollisionShapes/btConvexHullShape.h"
%include "BulletCollision/CollisionShapes/btSphereShape.h"
%include "BulletCollision/CollisionShapes/btMultiSphereShape.h"
%include "BulletCollision/CollisionShapes/btConcaveShape.h"
%include "BulletCollision/CollisionShapes/btStaticPlaneShape.h"
%include "BulletCollision/CollisionShapes/btBoxShape.h"

%include "BulletDynamics/Dynamics/btDynamicsWorld.h"
%include "BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h"
%include "BulletDynamics/Dynamics/btSimpleDynamicsWorld.h"
%include "BulletDynamics/Dynamics/btRigidBody.h"

%include "BulletDynamics/ConstraintSolver/btConstraintSolver.h"
%include "BulletDynamics/ConstraintSolver/btTypedConstraint.h"
%include "BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h"
%include "BulletDynamics/ConstraintSolver/btHingeConstraint.h"
%include "BulletDynamics/ConstraintSolver/btConeTwistConstraint.h"
%include "BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h"
%include "BulletDynamics/ConstraintSolver/btSliderConstraint.h"
%include "BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h"
%include "BulletDynamics/ConstraintSolver/btUniversalConstraint.h"
%include "BulletDynamics/ConstraintSolver/btHinge2Constraint.h"
%include "BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h"

%include "BulletSoftBody/btSparseSDF.h"
%include "BulletSoftBody/btSoftBody.h"
%include "BulletSoftBody/btSoftRigidDynamicsWorld.h"
%include "BulletSoftBody/btSoftBodySolvers.h"
%include "BulletSoftBody/btDefaultSoftBodySolver.h"
%include "BulletSoftBody/btSoftBodyHelpers.h"
%include "BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h"

%inline %{
const btVector3& btSoftBodyGetNodePosition(const btSoftBody *body, int n) {
	return body->m_nodes[n].m_x;
}

void btSoftBodySetNodePosition(btSoftBody *body, int n, const btVector3& pos) {
	body->m_nodes[n].m_x = pos;
}

void btSoftBodySetStretch(btSoftBody *body, float val) {
	body->m_materials[0]->m_kLST = val;
}

void btSoftBodySetShear(btSoftBody *body, float val) {
	body->m_materials[0]->m_kAST = val;
}
%}


%template(btSparseSdf3) btSparseSdf<3>;
%array_class(float, floatArray)
%array_class(btVector3, btVector3Array)